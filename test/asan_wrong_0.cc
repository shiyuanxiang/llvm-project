#include <iostream>
#include <cstdlib>
#include <string.h>

int main()
{
    int *array = (int *)malloc(12 * sizeof(int));
    array[-10] = 10086;
    int value = array[11];
    if (value)
    {
        std::cout << "ok, no uum\n";
    }
    free(array);
    return 0;
}
