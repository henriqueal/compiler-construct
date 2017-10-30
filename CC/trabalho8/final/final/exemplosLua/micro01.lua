-- Listagem 13: Converte graus Celsius para Fahrenheit

-- [[ Função: Ler uma temperatura em graus Celsius e apresentá-la convertida em graus Fahrenheit. A fórmula de conversão é : F=(9*C+160) / 5, sendo F a temperatura em Fahrenheit e C a temperatura em Celsius. --]]

print("Tabela de Conversão: Celsius -> Fahrenheit")
print("Digite a Temperatura em Celsius: ")
cel = io.read("*number")
far = (9*cel+160)/5
print("A nova temperatura é:", far)