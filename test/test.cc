#include <omp.h>
#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{

    std::cout << 0x00008fff6fff - 0x00007fff8000 << endl;
    std::cout << 0x100000000000ULL - 0x010000000000ULL << endl;
    return 0;
}
