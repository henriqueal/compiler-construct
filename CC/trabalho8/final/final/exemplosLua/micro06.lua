-- Escreve um número lido por extenso

--[[ Função: Faça um algoritmo que leia um número de 1 a 5 e o escreva por extenso. Caso o usuário digite um número que não esteja nesse intervalo, exibir mensagem: número invalido --]]

print("Digite um número de 1 a 5")
numero = io.read("*number")
if(numero == 1) then print("Um")
elseif (numero == 2) then print("Dois")
elseif (numero == 3) then print("Três")
elseif (numero == 4) then print("Quatro")
elseif (numero == 5) then print("Cinco")
else print("Número Invalido!!!")
end