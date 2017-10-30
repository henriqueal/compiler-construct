
public class micro08{

    public static void main(String[] args){
        int numero;

        numero = 1;

        while(numero != 0){
            System.out.println("Digite um número: ");
            numero = Integer.parseInt(System.console().readLine());

            if(numero > 10 ) System.out.println("O numero "+numero+" é maior que dez.");
            else System.out.println("O numero "+numero+" é menor que dez.");
         
        }
    }
}
