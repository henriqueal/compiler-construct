program micro10;

function Fatorial(numero : integer) : integer;
begin
    if(numero <= 0 ) then Fatorial := 1
    else Fatorial := numero* Fatorial(numero-1)
end;
var
    numero, fat : integer;

begin
    write('Digite um número: ');
    read(numero);

    fat := Fatorial(numero);

    write('O fatorial de ');
    write(numero);
    write(' é ');
    write(fat);
end.


