-- Listagem 20: Decide se um numero e maior ou menor que 10

numero = 1
while(numero ~= 0)
do
	print("Escreva um numero: ")
	numero = tonumber(io.read())

	if(numero > 10)
	then print("O numero",numero,"e maior que 10")
	else print("O numero",numero,"e menor que 10")
	end
end