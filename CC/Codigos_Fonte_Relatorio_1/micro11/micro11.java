
public class micro11{

    public static int verifica(int n){
	int res;
        if(n > 0)
		res = 1;
        else if (n < 0)
		res = -1;
	else
		res = 0;
	return res;
    }

    public static void main(String[] args){
        int numero, x;

        System.out.println("Digite um numero: ");
        numero = Integer.parseInt(System.console().readLine());

	if (x == 1)
	        System.out.println("Número positivo");
	else if (x == 0)
	        System.out.println("Zero");
	else
	        System.out.println("Número negativo");
    }

}
