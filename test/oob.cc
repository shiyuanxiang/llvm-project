#include <iostream>
#include <cstdlib>
#include <string.h>
int *global_array_malloc = (int *)malloc(30 * sizeof(int));
int *global_array = new int[14];
int main()
{
    int *stack_array_malloc = (int *)malloc(30 * sizeof(int));
    int *stack_array = new int[12];
    int stack_var = 0;
    // memset(stack_array_malloc, 1, 30 * sizeof(int));

    std::cout << "Out-of-bounds stack_array_malloc[10000]: " << stack_array_malloc[10000] << std::endl;
    free(stack_array_malloc);

    // if (global_array[1])
    // {
    // }

    return 0;
}
