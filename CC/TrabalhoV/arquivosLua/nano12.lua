--  Listagem 12: Comando condicional aninhado em um comando de repetição
n = 1
m = 2
x = 5

while(x > n)
do
	if(n == m)
	then
		print(n)
	else
		print("0")
	end
	x = x - 1
end