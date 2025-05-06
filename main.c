#include <stdio.h>

int main(void) {
    const int arr[4] = {1, 2, 3, 4};

    const int *arr_ptr_fir = arr;
    const int *arr_ptr_sec = arr_ptr_fir;

    arr_ptr_sec++;

    printf("first arr index: %d\n", *arr_ptr_fir); //result: 1
    printf("second arr index: %d\n", *arr_ptr_sec); //result: 2
    return 0;
}
