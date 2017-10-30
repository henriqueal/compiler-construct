program micro02;

var 
    num1, num2 : integer;

begin
    writeln('Digite o primeiro número: ');
    read(num1);
    write('Digite o segundo número: ');
    read(num2); 

    if(num1 > num2) then write('O primeiro número ', num1, ' é maior que o segundo número ', num2)
    else write('O segundo número ', num2, ' é maior que o primeiro número ', num1);
     
end.
