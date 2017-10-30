
public class micro07{

    public static void main(String[] args){
        int numero, programa;
        String opc;

        programa = 1;

        while(programa == 1){
            System.out.println("Digite um número: ");
            numero = Integer.parseInt(System.console().readLine());

            if(numero > 0 ) System.out.println("Positivo");
            else if (numero == 0) System.out.println("O número é igual a zero.");
            else System.out.println("Negativo");
        
            System.out.println("Deseja finalizar? (S/N)");
            opc = System.console().readLine();    

            if(opc.equals("S")) programa = 0;        
        }
    }
}
