program micro09;

var
    preco, venda, novo_preco : real;

begin
    write('Digite o preço: ');
    read(preco);

    write('Digite a venda: ');
    read(venda);

    if((venda < 500) or (preco < 30)) then 
        novo_preco := preco + ((10/100) * preco)
    
    else
    begin
        if(((venda >= 500) and (venda < 1200)) or ((preco >= 30) and (preco < 80))) then 
            novo_preco := preco - ((15/100) * preco)
            
        else if((venda >= 1200) or (preco >= 80)) then
            novo_preco := preco - ((20/100)*preco);
    end;

end.
