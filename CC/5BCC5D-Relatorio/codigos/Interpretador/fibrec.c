#include <stdio.h>
  
int main()
{
   int n, i, c;
 
   puts("Digite o numero de termos:\n");
   gets(n);
 
   puts("Os ");
   puts(n);
   puts(" primeiros termos da serie de Fibonacci sao:\n");
 
   i = 0;

   for (c = 1 ; c <= n ; c = c + 1)
   {
      puts(Fibonacci(i));
      puts(" ");
      i = i + 1; 
   }
 
   return 0;
}
 
int Fibonacci(int n)
{
   if(n == 0)
   {
      return 0;
   
   }
   else
   {
      if(n == 1)
      {
         return 1;

      }
      else
      {
         return (Fibonacci(n-1) + Fibonacci(n-2));
      }
   }
} 
