#include <stdio.h>
 
int main()
{
   int n;
   int f;

   puts("Insira um numero para calcular seu fatorial:\n");
   gets(n); 

   if(n < 0)
   {
      puts("Numeros negativos nao sao permitidos!\n");
   }
   else
   {
      f = factorial(n);
      puts(n);
      puts("! = ");
      puts(f);
      puts("\n");
   }

   return 0;
}
 
int factorial(int n)
{
   if(n == 0)
   {
      return 1;
   }
   else
   {
      return (n * factorial(n-1));
   }
}
