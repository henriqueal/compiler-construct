local preco, venda, novo_preco

io.write("Digite o preço: ")
preco = tonumber(io.read())
io.write("Digite a venda: ")
venda = tonumber(io.read())

if venda < 500 or preco < 30 then
  novo_preco = preco + 10/100 * preco
  
elseif (venda >= 500 and venda < 1200) or (preco >= 30 and preco < 80) then
  novo_preco = preco + 15/100 * preco
  
elseif venda >= 1200 or preco >= 80 then
  novo_preco = preco - 20/100 * preco
end 
  
 io.write("O novo preço é ", novo_preco, "\n") 
