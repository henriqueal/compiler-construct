-- Listagem 21: Calculo de Precos

print("Digite o preco: ")
preco = tonumber(io.read())
print("Digite a venda: ")
venda = tonumber(io.read())

if ((venda < 500) or (preco < 30))
then novo_preco = preco + (10/100 * preco)
elseif ((venda >= 500 and venda < 1200) or (preco >= 30 and preco < 80))
then novo_preco = preco + (15/100 * preco)
elseif (venda >= 1200 or preco >= 80)
then novo_preco = preco - (20/100 * preco)
end

print("O novo preco e: ", novo_preco)