-- Listagem 16: Lê números e informa quais estão entre 10 e 150

--[[ Função: Ler 5 números e ao final informar quantos números estão no intervalo entre 10 (inclusive) e 150(inclusive) --]]

intervalo = 0

for x=1,5,1
do
	print("Digite um número")
	num = io.read("*number")
	if(num >= 10)
	then
		if(num <= 150)
		then
			intervalo = intervalo + 1
		end
	end
end

print("Ao total, foram digitados",intervalo,"números no intervalo entre 10 e 150")