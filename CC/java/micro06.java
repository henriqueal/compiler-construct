
public class micro06{

    public static void main(String[] args){
        int num;

       
            System.out.println("Digite um número de 1 a 5: ");
            num = Integer.parseInt(System.console().readLine());


            switch(num){
                case 1:
                    System.out.println("Um");
                    break;
        
                case 2:
                    System.out.println("Dois");
                    break;

                case 3:
                    System.out.println("Três");
                    break;
                
                case 4:
                    System.out.println("Quatro");
                    break;

                case 5:
                    System.out.println("Cinco");
                    break;

                default:
                    System.out.println("Número inválido");
            }
    }
}
