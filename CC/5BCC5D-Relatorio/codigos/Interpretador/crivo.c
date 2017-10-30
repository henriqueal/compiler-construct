#include <stdio.h>

int main()
{
   int i, j, n, m, x, flag;   

   puts("Digite o valor maximo:\n");
   gets(x);
   puts("Os numeros primos entre 0 e ");
   puts(x);
   puts(" sao:\n");

   for(n = 2; n <= x; n = n + 1)
   {  
      flag = 0;      
      if(n == 2)
      {
          flag = 0;  
      }
      else
      {
         for(i = 2; i < n; i = i + 1)
         {
            m = n mod i;
            if(m == 0)
            {
               flag = 1;
            }
         }
      }
      if(flag == 0)
      {
         puts(n);
         puts(" ");
      }
   }
   puts("\n");
   return 0;
}
