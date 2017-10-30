program micro05;

var
    nome, sexo : string;
    x, h, m : integer;    

begin
    h := 0;
    m := 0;

    for x:=0 to 4 do
    begin
        write('Digite o nome: ');
        read(nome);

        write('H - homem ou M - mulher: ');
        read(sexo);

        case sexo of
            'M' :
                m := m + 1;
            
            'H' :
                h := h + 1;    
        end;
    end;

    writeln('Foram introduzidos ',h,' homens.');
    writeln('Foram introduzidos ', m, ' mulheres.');

end.

