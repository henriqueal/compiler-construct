public class Micro02{

    public static void main(String[] args){
        double num1, num2;
        System.out.println("Digite o primeiro número: ");
        num1 = Integer.parseInt(System.console().readLine());
        System.out.println("Digite o segundo número: ");     
        num2 = Integer.parseInt(System.console().readLine()); 
        
        if(num1 > num2) System.out.print("O primeiro número "+num1+" é maior que o segundo"+num2); 
        else System.out.print("O segundo número "+num2+" é maior que o primeiro"+num1);

                
    }
}
