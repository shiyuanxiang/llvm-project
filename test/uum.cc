#include <iostream>
#include <cstdlib>
#include <string.h>

int *array_global = (int *)malloc(123 * sizeof(int));
// 0xf1
int main()
{
    int *array = (int *)malloc(33 * sizeof(int));
    // int *array1 = (int *)malloc(33 * sizeof(int));
    // int array_alloc[31];
    // int *array1 = (int *)malloc(12 * sizeof(int));
    // int *array2 = (int *)malloc(24 * sizeof(int));
    // int *array1 = (int *)malloc(12 * sizeof(int));

    // memset(array1, 1, 1 * sizeof(int));
    // memcpy(array, array1, 1 * sizeof(int));
    // array[0] = array1[0];
    // memset(array, 1, 13 * sizeof(int));
    // memset(array1, 1, 13 * sizeof(int));

    // array[0] = 10085;
    // array[1] = 10086;
    // array[2] = 10086;
    // int value1 = array[1];
    // int value2 = array[1];
    int value = array[10000]; // 0xfa

    if (value)
    {
        std::cout << "ok, no uum\n";
    }
    free(array);
    return 0;
}
