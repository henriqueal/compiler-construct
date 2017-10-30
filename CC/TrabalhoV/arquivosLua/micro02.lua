-- Listagem 14: Ler dois inteiros e decide qual é maior

--[[ Função : Escrever um algoritmo que leia dois valores inteiro distintos e informe qual é o maior --]]

print("Escreva o primeiro número:")
num1 = io.read("*number")
print("Escreva o segundo número:")
num2 = io.read("*number")

if(num1 > num2)
then
	print("O primeiro número", num1,"é maior que o segundo",num2)
else
	print("O segundo número", num2, "é maior que o primeiro", num1)
end
