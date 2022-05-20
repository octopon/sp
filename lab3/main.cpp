#include <cstdio>
#include <stdlib.h>
#include <stdio.h>
#include <cstdint>
#include <time.h>
#include <cstddef>

extern "C"
{
int sumofsquare(int *arr1, size_t size);
}


int main(void) {

    srand(time(NULL));
    int n = (rand()% 10) + 2;
    int arr1[n];
    printf("%s", "Array: ");
    for (int i = 0; i < n; i++)
   {
    arr1[i] = (rand()% 11) + 1;
    printf("%d %s", arr1[i], " ");
   }

    size_t size = sizeof(arr1) / sizeof(int);
    
    printf("\nSum of square: %d\n", sumofsquare(arr1, size));

    return 0;
}
