#include <iostream>
#include <ctime>
#include <stdio.h>


using namespace std;


extern "C"
{
int sumofsquare(int *arr1, int *arr2, size_t size);
}


int main(void) 
{

    srand(time(0));
    int n = rand() % 10 + 2;
    int arr1[n];
    int arr2[n];
    cout << "\tArray: ";
    for (int i = 0; i < n; i++)
    {
        arr1[i] = rand() % 9 + 1;
        arr2[i] = arr1[i];
        cout <<arr1[i]<<" ";
    }
    cout << endl;

    size_t size = sizeof(arr1) / sizeof(int);

    cout << "\tSum of square: " << sumofsquare(arr1, arr2, size) << endl;

    return 0;
}
