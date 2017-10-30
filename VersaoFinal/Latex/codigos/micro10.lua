function fatorial(num)
  if num <= 0 then
    return 1
  else 
    return num * fatorial(num-1)
  end
end

local numero, fat

io.write("Digite um número: ")
numero = tonumber(io.read())

fat = fatorial(numero)

io.write("O fatorial de ")
io.write(numero)
io.write(" é ")
io.write(fat)

