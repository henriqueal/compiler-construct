local x, numero, intervalo
intervalo = 0

for x = 1, 5, 1 do
  io.write("Digite um numero: ")
  numero = tonumber(io.read())
  
  if numero >= 10 then
    if numero <= 150 then
      intervalo = intervalo + 1
    end
  end
  
end

io.write("Ao total, foram digitados ",intervalo," números no intervalo entre 10 e 150\n")

