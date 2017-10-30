local numero
numero = 1

while numero ~= 0 do
  io.write("Digite um numero: ")
  numero = tonumber(io.read())
  
  if numero > 10 then
    io.write("O número ",numero," é maior que 10\n")
    
  else 
    io.write("O número ",numero," é menor que 10\n")
  end
end

