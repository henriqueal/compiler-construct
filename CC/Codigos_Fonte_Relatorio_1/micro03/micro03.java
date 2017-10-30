
public class micro03{

    public static void main(String[] args){
        int numero;
        System.out.println("Digite um número: ");
        numero = Integer.parseInt(System.console().readLine());
    
        if(numero >= 100)
            if(numero <= 200) System.out.println("O número está no intervalo entre 100 e 200"); 
            else System.out.println("O número não está no intervalo entre 100 e 200"); 

        else System.out.println("O número não está no intervalo entre 100 e 200"); 

        
    }
}
