local numero

io.write("Digite um numero de 1 a 5: ")
numero = tonumber(io.read())


if numero == 1 then
  io.write("Um\n")
elseif numero == 2 then
  io.write("Dois\n")
elseif numero == 3 then
  io.write("Tres\n")
elseif numero == 4 then
  io.write("Quatro\n")
elseif numero == 5 then
  io.write("Cinco\n")
else
  io.write("Número Inválido!!!\n")
end

