#include <stdio.h>

int soma(int n1, int n2)
{
   return n1 + n2;
}

int main()
{
   int a, b;
   int resultado;
   int i;

   a = 10;
   b = 5;
   
   resultado = soma(a, b);

   puts(resultado);

   return 0;
}
