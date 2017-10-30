program micro06;

var
    num : integer;    

begin
    
        write('Digite um número de 1 a 5: ');
        read(num);

        case num of
            1 : writeln('Um');
            2 : writeln('Dois');
            3 : writeln('Três');
            4 : writeln('Quatro');
            5 : writeln('Cinco');
        end;


end.

