program micro04;

var
    x,num,intervalo: integer;


begin
    for x:=1 to 5 do
        begin
            write('Digite um número: ');
            read(num);
    
            if (num >= 10) then
                begin
                if (num <= 150) then intervalo := intervalo + 1;
                end;
        end;

    write('Ao total, foram digitados ',intervalo,' números no intervalo entre 10 e 150');

end.
