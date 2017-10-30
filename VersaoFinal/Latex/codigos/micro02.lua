local num1, num2

io.write("Digite o primeiro numero: ")
num1 = io.read()
io.write("Digite o segundo numero: ")
num2 = io.read()

if num1 > num2 then
  io.write("O primeiro número ",num1," é maior que o segundo ",num2)
else
  io.write("O segundo número ",num2," é maior que o primeiro ",num1)
end

