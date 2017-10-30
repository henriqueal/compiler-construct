using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 
namespace CelParaFar
{
    class Programa
    {
        static void Main(string[] args)
        {
            int cel, far;
            Console.WriteLine("Tabela de conversão: Celsius -> Fahrenheit");
            Console.WriteLine("Digite a temperatura em Celsius: ");
            cel = int.Parse(Console.ReadLine());
            far = (cel * 9) / 5 + 32;
            Console.WriteLine("A nova temperatura é: " + far +" F");
      
        }
    }
}
