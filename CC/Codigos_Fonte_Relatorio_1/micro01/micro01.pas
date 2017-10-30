program micro01;

var 
    cel, fars : real;

begin
    writeln('   Tabela de conversão: Celsius -> Fahrenheit');
    write('Digite a temperatura em Celsius: ');
    read(cel);

    fars := ((9*cel) + 160) / 5;

    writeln('A nova temperatura eh: ', fars, ' F'); 
end.
