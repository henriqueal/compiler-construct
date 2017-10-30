n,m:string
-- função que calcula a fatorial de um número
-- recebe um número "n"
function fat(n:string,m:string):inteiro
	w:inteiro
	if (n == m) then
		return 1
	else
		return 0
	end
end
n="tchau"
m="oi"
m=io.read()

-- imprime o fatorial
print("Fatorial de s: ", fat(n,m))