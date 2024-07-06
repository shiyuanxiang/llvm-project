#include <stdio.h>

#include <string.h>

// class Buffer
// {
// public:
//     Buffer(int size)
//     {
//         data = new char[size];
//         len = size;
//     }
//     ~Buffer()
//     {
//         delete[] data;
//     }

//     void write(const char *str, int size)
//     {
//         if (size > len)
//         {
//             delete[] data;
//             data = new char[size];
//             len = size;
//         }
//         memcpy(data, str, size);
//     }

//     char *read()
//     {
//         return data;
//     }

// private:
//     char *data;
//     int len;
// };

// int read_size()
// {
//     return 12;
// }

// void foo(Buffer &buf)
// {
//     char tmp[10];
//     int size = read_size();

//     buf.write(tmp, size);
// }

// void bar()
// {
//     Buffer buf(100);

//     foo(buf);

//     char *data = buf.read();
//     if (data[0] == 'A')
//     {
//         printf("data starts with A\n");
//     }
//     else
//     {
//         printf("data does not start with A\n");
//     }
// }

int main()
{
    char *str = "Hello, World!";
    int size = 5;
    char data[size];
    memcpy(data, str, size);
    data[size - 1] = '\0';
    printf("%c", data[0]);
    // bar();
    return 0;
}
