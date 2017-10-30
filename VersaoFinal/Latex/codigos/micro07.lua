local programa, numero, opc
programa = 1

while programa == 1 do
  io.write("Digite um numero: ")
  numero = tonumber(io.read())
  
  if numero > 0 then
    io.write("Positivo\n")
    
  else
    if numero == 0 then
      io.write("O numero é igual a 0\n")
    end
    if numero < 0 then
      io.write("Negativo\n")
    end
  end
  
  io.write("Deseja finalizar? (S/N): ")
  opc = io.read()
  
  if opc == 'S' then
    programa = 0
  end
end
      
      