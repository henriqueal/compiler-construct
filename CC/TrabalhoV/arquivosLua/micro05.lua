-- Listagem 17: Lê strings e caracteres
--[[ Função: Escrever um algoritmo que leia o nome e o sexo de 56 pessoas e informe o nome e se ela é homem ou mulher. No final informe o total de homens e mulheres --]]

h = 0
m = 0
for x=1,5,1
do
	print("Digite o nome: ")
	nome = io.read()
	print("H - Homem ou M - Mulher")
	sexo = io.read()
	if(sexo == "H") then h = h + 1
	elseif (sexo == "M") then m = m + 1
	else print("Sexo só pode ser H ou M!")
	end
end

print("Foram inseridos",h,"homens")
print("Foram inseridas",m,"mulheres")