#include "aarch64.h"
#include "emulate.h"
#include <stdio.h>

void print_amx_state(const amx_state* state) {
    printf("AMX State:\n");

    // Print X registers
    printf("X Registers:\n");
    for (int i = 0; i < 8; i++) {
        printf("X%d: ", i);
        for (int j = 0; j < 64; j++) {
            printf("%02d ", state->x[i].u8[j]);
            if ((j + 1) % 16 == 0) printf("\n    ");
        }
        printf("\n");
    }

    // Print Y registers
    printf("Y Registers:\n");
    for (int i = 0; i < 8; i++) {
        printf("Y%d: ", i);
        for (int j = 0; j < 64; j++) {
            printf("%02d ", state->y[i].u8[j]);
            if ((j + 1) % 16 == 0) printf("\n    ");
        }
        printf("\n");
    }

    // Print Z registers
    printf("Z Registers:\n");
    for (int i = 0; i < 64; i++) {
        printf("Z%d: ", i);
        for (int j = 0; j < 64; j++) {
            printf("%02d ", state->z[i].u8[j]);
            if ((j + 1) % 16 == 0) printf("\n    ");
        }
        printf("\n");
    }
}

void print_matrix(uint8_t *original_matrix) {
    for (int i = 0; i < 64; i++) {
        printf("Row %d: ", i);
        for (int j = 0; j < 64; j++) {
            printf("%02d ", original_matrix[i * 64 + j]);
            if ((j + 1) % 16 == 0) printf("\n    ");
        }
        printf("\n");
    }
}