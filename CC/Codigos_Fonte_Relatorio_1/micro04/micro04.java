
public class micro04{

    public static void main(String[] args){
        int x, num, intervalo = 0;

        

        for(x = 0; x < 5; x++){
            System.out.println("Digite um número: ");
            num = Integer.parseInt(System.console().readLine());
    
            if(num >= 10)
                if(num <= 150) intervalo++;

             

        }
        System.out.println("Ao total, foram digitados "+intervalo+" números no intervalo entre 10 e 150");
    }
}
