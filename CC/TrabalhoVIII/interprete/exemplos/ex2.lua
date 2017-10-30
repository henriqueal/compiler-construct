a, b, soma: inteiro
s,z : inteiro
f: arranjo [2..10] de inteiro


function somador(x: inteiro, y: inteiro) : inteiro
  r: inteiro
  w:inteiro
  r = x + y
	return r
end 


a = 2
b = 3
if ( a > b ) then
  a=3
else
  a=23
end 

s =io.read()

soma = somador(a, b) - 1
print ("Calculando: ", 2*a - 3, a, b, soma, 5, s)

