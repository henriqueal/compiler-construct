a,s,soma,b,numero: inteiro
f: float




--[[fsamdkfasmkj]]

function fatorial(n:inteiro) : inteiro
	begin
	if (n == 0) then
		return 1
	else
		return n * fatorial(n - 1)
	end
end


function somador(x: inteiro, y: inteiro) : inteiro
  r: inteiro
  begin
  r = x + y
  return r
end 


begin

numero = 1
a=1
b=2
s=1
soma=1
--c=1

print("While!")
while (numero != 5) do
  numero = numero + 1
  print(numero)
end
print("-------------") 


--[[fsads


dsafs
]]


if ( a < b and a==a) then
  a=3
  print("entrou no if")
else
  a=23
end 

s = io.read()

soma = somador(a, b) - 1
--print ("Calculando: ", 2*a - 3, a, b, soma, 5, s)


print ("Fatorial: ",fatorial(s))


end
