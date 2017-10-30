program micro03;

var
    numero : integer;

begin

    write('Digite um número');
    read(numero);

    if( numero >= 100) then
        if (numero <= 200) then 
            writeln('O número está no intervalo entre 100 e 200')

        else writeln('O número não está no intervalo entre 100 e 200')

    else writeln('O número não está no intervalo entre 100 e 200')

end.
