
public class micro05{

    public static void main(String[] args){
        int x,m = 0, h = 0;
        String sexo, nome; 

        for(x = 0; x < 5; x++){
            System.out.println("Digite o nome: ");
            nome = System.console().readLine();

            System.out.println("H - homem ou M - mulher: ");
            sexo = System.console().readLine();

            switch(sexo){
                case "M":
                    m += 1;
                    break;
        
                case "H":
                    h += 1;
                    break;

                default:
                      System.out.println("Sexo só pode ser H ou M!"); 
            }
    
        } 

        System.out.println("Foram inseridos "+h+" homens.");
        System.out.println("Foram inseridos "+m+" mulheres.");
    }
}
