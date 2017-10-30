local nome, sexo, x, h, m
h = 0
m = 0

for x = 1, 5, 1 do
    io.write("Digite o nome: ")
    nome = io.read()
    io.write("H - Homem ou M - Mulher: ")
    sexo = io.read()
    
    if sexo == 'H' then
      h = h + 1
    elseif sexo == 'M' then
      m = m + 1
    else
      io.write("Sexo só pode ser H ou M!\n")
    end
  
end

io.write("Foram inseridos ",h," Homens\n")
io.write("Foram inseridos ",m," Mulheres\n")

