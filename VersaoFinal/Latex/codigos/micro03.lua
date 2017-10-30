local numero

io.write("Digite um numero: ")
numero = tonumber(io.read())


if numero >= 100 then
  
  if numero <= 200 then
    io.write("O número está no intervalo entre 100 e 200\n")
  else
    io.write("O número não está no intervalo entre 100 e 200\n")
  end
  
else
  io.write("O número não está no intervalo entre 100 e 200\n")
end

