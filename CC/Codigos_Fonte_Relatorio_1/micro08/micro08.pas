program micro08;

var
    numero : integer;


begin
    numero := 1;

    while (numero <> 0) do
    begin
        write('Digite um número: ');
        read(numero);   

        if(numero > 10) then
            writeln('O número ',numero,' é maior que dez.')
        else
            writeln('O número ',numero, ' é menor que dez.')
    end;
end.
