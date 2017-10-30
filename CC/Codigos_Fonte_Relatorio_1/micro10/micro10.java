
public class micro10{

    public static void main(String[] args){
        int numero, fat;

        System.out.println("Digite um numero: ");
        numero = Integer.parseInt(System.console().readLine());

        fat = fatorial(numero);
        
        System.out.println("O fatorial de "+ numero);
        System.out.println("é");
        System.out.println(fat);
    }

    public static int fatorial(int numero){
        if(numero <= 0) return 1;
        else return numero * fatorial(numero - 1);
    }
}
