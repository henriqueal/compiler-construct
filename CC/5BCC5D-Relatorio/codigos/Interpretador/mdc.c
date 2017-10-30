#include <stdio.h>

int main()
{
   int n1, n2, v1, v2;
    
   puts("Digite dois numeros inteiros positivos:\n");
   gets(n1);
   gets(n2);

   v1 = n1;
   v2 = n2;

   while(n1!=n2)
   {
      if(n1 > n2)
      {
         n1 = n1 - n2;
      }
      else
      {
         n2 = n2 - n1;
      }   
   }
   
   puts("M.D.C. (");
   puts(v1);
   puts(", ");
   puts(v2);
   puts(") = ");
   puts(n1);
   puts("\n");

   return 0;
}
