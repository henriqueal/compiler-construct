#include <stdio.h>

int a;

int main()
{
   int a, b, n;
   n = 10;
   a = func(n);
   b = a+2;

   return 0;
}

int func(int x)
{
   return x*x;
}
