#include "stdint.h"
#include "stdio.h"

int main()
{
  uint8_t m = 34;
  uint8_t arr[12] = {34, 115, 120, 1, 255, 200, 10, 232, 43, 127, 136, 240};
  uint16_t c = 0;

 for (uint8_t i = 0; i < 12; i++)
 {
  if ((arr[i] & m)==m)
  {
    c++;
  }
 }

 printf("%x", c);
 printf("\n");

 return 0;
}
