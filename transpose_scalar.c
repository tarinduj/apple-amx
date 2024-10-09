#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MATRIX_SIZE 64

void print_matrix(uint8_t matrix[MATRIX_SIZE][MATRIX_SIZE], const char* label) {
    printf("%s:\n", label);
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            printf("%3d ", matrix[i][j]);
            if (j == 7) break;  // Print only first 8 columns
        }
        printf(" ... ");
        printf("%3d\n", matrix[i][MATRIX_SIZE - 1]);
        if (i == 7) break;  // Print only first 8 rows
    }
    printf("...\n");
    for (int j = 0; j < MATRIX_SIZE; j++) {
        printf("%3d ", matrix[MATRIX_SIZE-1][j]);
        if (j == 7) break;  // Print only first 8 columns
    }
    printf(" ... ");
    printf("%3d\n\n", matrix[MATRIX_SIZE - 1][MATRIX_SIZE - 1]);
}

// Example usage
int main() {
    uint8_t source[MATRIX_SIZE][MATRIX_SIZE];
    uint8_t destination[MATRIX_SIZE][MATRIX_SIZE];

    double total_time = 0;
    for (uint64_t outer = 0; outer < 1000; ++outer) {
        // Initialize source matrix (example)
        srand(time(NULL));
        for (int i = 0; i < MATRIX_SIZE; ++i) {
            for (int j = 0; j < MATRIX_SIZE; ++j) {
                source[i][j] = (uint8_t)(rand() % 256);
            }
        }

        // Print source matrix
        // print_matrix(source, "Source Matrix");

        // Perform transpose
        struct timespec start, end;
        double cpu_time_used;

        // Get start time
        clock_gettime(CLOCK_MONOTONIC, &start);
        
        for (int i = 0; i < MATRIX_SIZE; i++) {
            for (int j = 0; j < MATRIX_SIZE; j++) {
                destination[j][i] = source[i][j];
            }
        }

        // Get end time
        clock_gettime(CLOCK_MONOTONIC, &end);

        // Print transposed matrix
        print_matrix(destination, "Transposed Matrix");


        // Calculate elapsed time in seconds

        cpu_time_used = (end.tv_sec - start.tv_sec) * 1e9 + (end.tv_nsec - start.tv_nsec);
        printf("Time taken: %f ns \n", cpu_time_used);

        total_time += cpu_time_used;
    }

    printf("Average time taken: %f ns\n", total_time / 1000);
    return 0;
}

// To time: initialize to random and run for multiple times