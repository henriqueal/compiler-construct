local numero
io.write("\tDigite um numero: ")
numero = tonumber(io.read())

if numero >= 100 then
  
  if numero <= 200 then
    io.write("O numero esta no intervalo entre 100 e 200\n")
  else
    io.write("O numero nao esta no intervalo entre 100 e 200\n)
  end
else 

io.write("O numero nao esta no intervalo entre 100 e 200\n")
end


