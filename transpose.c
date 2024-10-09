#include "tp_utils.h"
#include <stdlib.h>
#include <time.h>

// Logic for copying between hardware AMX state and emulated AMX state
// flags: Load / store pair of registers (1) or single register (0)
#define PTR_ROW_FLAGS(ptr, row, flags) (((uint64_t)&*(ptr)) + (((uint64_t)((row) + (flags) * 64)) << 56))

static void capture_state(amx_state* dst) {
    uint32_t row = 0;
    for (; row < 8; row += 2) {
        AMX_STX(PTR_ROW_FLAGS(dst->x[row].u8, row, 1));
        AMX_STY(PTR_ROW_FLAGS(dst->y[row].u8, row, 1));
        AMX_STZ(PTR_ROW_FLAGS(dst->z[row].u8, row, 1));
    }
    for (; row < 64; row += 2) {
        AMX_STZ(PTR_ROW_FLAGS(dst->z[row].u8, row, 1));
    }
}

static bool transpose(const char* name) {
    uint8_t *original_matrix = (uint8_t *)aligned_alloc(128, 64 * 64);
    uint8_t *transposed_matrix = (uint8_t *)aligned_alloc(128, 64 * 64);
    if (original_matrix == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    amx_state actual;

    double toal_time = 0;
    for (uint64_t outer = 0; outer < 1000; ++outer) {
        // extract z register columns to y registers
        uint64_t extrv_operand = 0;

        // Set Bit 26 to 1 to select instruction variant
        extrv_operand |= ((uint64_t)1 << 26);

        // Lane Width Mode Low (Bits 11-14): 0 for 8-bit data
        extrv_operand |= ((uint64_t)(0x0) << 11);

        // Lane Width Mode High (Bit 63): 0 for 8-bit data
        // Already zero by default; included here for clarity

        // Destination Register: Bit 10 = 1 (Y register)
        extrv_operand |= ((uint64_t)(0x1) << 10);

        // Z Column Start: Bits 20-25 (starting Z column)\

        // Destination Offset in Y: Bits 0-8

        // Write Enable Mode: Bits 38-40 = 0 (enable all lanes)
        extrv_operand |= ((uint64_t)(0x0) << 38);

        // Write Enable Value: Bits 32-37 = 0 (enable all lanes)
        extrv_operand |= ((uint64_t)(0x0) << 32);

        srand(time(NULL)); // Seed the random number generator
        for (int i = 0; i < 64; i++) {
            for (int j = 0; j < 64; j++) {
                original_matrix[i * 64 + j] = rand() % 256; // Random value between 0 and 255
            }
        }

        // print z memory
        print_matrix(original_matrix);

        AMX_SET();

        // capture_state(&actual);
        // print_amx_state(&actual);

        // copy z memory to z registers
        

        struct timespec start, end;
        double cpu_time_used;

        // Get start time
        clock_gettime(CLOCK_MONOTONIC, &start);

        uint32_t row = 0;
        #pragma unroll
        for (; row < 64; row += 2) {
            AMX_LDZ(PTR_ROW_FLAGS(&original_matrix[row*64], row, 1));
        }

        uint32_t col = 0;
        #pragma unroll
        for (; col < 64; col += 2) {
            extrv_operand &= ~(0x3F << 20); // Clear the Z column bits
            extrv_operand |= ((uint64_t)((col) & 0x3F) << 20); // Update the Z column start
            extrv_operand |= (uint64_t)(0x0); // Starting offset
            AMX_EXTRV(extrv_operand);

            extrv_operand &= ~(0x3F << 20); // Clear the Z column bits
            extrv_operand |= ((uint64_t)((col+1) & 0x3F) << 20); // Update the Z column start
            extrv_operand |= (uint64_t)(64); // Starting offset
            AMX_EXTRV(extrv_operand);
            AMX_STY(PTR_ROW_FLAGS(&transposed_matrix[col*64], 0, 1));
        }

        // Get end time
        clock_gettime(CLOCK_MONOTONIC, &end);

        AMX_CLR();

        // // print z memory
        print_matrix(transposed_matrix);

        // Calculate elapsed time in seconds
        cpu_time_used = (end.tv_sec - start.tv_sec) * 1e9 + (end.tv_nsec - start.tv_nsec);
        printf("Time taken: %f ns \n", cpu_time_used);

        toal_time += cpu_time_used;

        
        // capture_state(&actual);
        // print_amx_state(&actual);
    }

    printf("Average time taken: %f ns \n", toal_time / 1000);

    

    return 0;
}

static uint64_t fpcr_init() {
    uint64_t old_fpcr;
    __asm volatile ("mrs %0, fpcr" : "=r"(old_fpcr));
    uint64_t new_fpcr = old_fpcr | (1ull << 25); // DN (Default NaN)
    __asm volatile ("msr fpcr, %0" : : "r"(new_fpcr));
    return old_fpcr;
}

static void fpcr_restore(uint64_t fpcr) {
    __asm volatile ("msr fpcr, %0" : : "r"(fpcr));
}

uint32_t AMX_VER;

static uint32_t detect_amx_hardware_version() {
    __attribute__((aligned(256))) uint8_t buf[256];
    buf[64] = 2;
    buf[128] = 1;
    AMX_SET(); // Set x[0:8] to zero
    AMX_LDX(PTR_ROW_FLAGS(buf, 48, 1)); // On M1: copy buf[0:128] to x[0,1], on M2: copy buf[0:256] to x[0,1,2,3], on M3: copy buf[0:256] to x[0,2,4,6]
    AMX_STX(PTR_ROW_FLAGS(buf,  2, 0)); // Copy x[2] to buf[0:64]
    AMX_CLR();
    return 1 + buf[0];
}

int main() {
    AMX_VER = detect_amx_hardware_version();
    uint64_t old_fpcr = fpcr_init();
    transpose("AMX_LDZ");
    fpcr_restore(old_fpcr);
    return 0;
}
