program micro07;

var
    programa, numero : integer;
    opc : char;


begin
    programa := 1;

    while (programa = 1) do
    begin
        write('Digite um número: ');
        read(numero);   

        if(numero > 0) then
            writeln('Positivo')
        else
        begin
            if(numero = 0) then           
                writeln('O número é igual a zero')
            else 
                writeln('Negativo')
        end;
        
        write('Deseja finalizar? (S/N)');
        read(opc);

        if(opc = 'S') then        
            programa := 0
          
        
    end;



end.
