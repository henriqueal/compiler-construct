function verifica(n)
  local res
  
  if n > 0 then
    res = 1
  elseif n < 0 then
    res = -1
  else 
    res = 0
  end
  
  return res
end

local numero, x

io.write("Digite um número: ")
numero = tonumber(io.read())

x = verifica(numero)

if x == 1 then
  io.write("Numero positivo\n")
  
elseif x == 0 then 
  io.write("Zero\n")
  
else
  io.write("Numero Negativo\n")
  
end

