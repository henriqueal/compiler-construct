
public class micro09{

    public static void main(String[] args){
        double preco, venda, novo_preco;

        System.out.println("Digite o preço: ");
        preco = Double.parseDouble(System.console().readLine());

        System.out.println("Digite a venda: ");
        venda = Double.parseDouble(System.console().readLine());

        if((venda < 500) || (preco < 30)) novo_preco = preco + ((10/100) * preco);
        else{

            if(((venda >= 500) && (venda < 1200)) || ((preco >= 30) && (preco < 80))) novo_preco = preco - ((15/100) * preco);
            else if((venda >= 1200) || (preco >= 80)) novo_preco = preco - ((20/100)*preco);

        }         
        
    }
}
