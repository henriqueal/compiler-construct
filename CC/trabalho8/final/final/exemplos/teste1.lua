s:inteiro
f:float
-- função que calcula a fatorial de um número
-- recebe um número "n"
function fat(n:inteiro):inteiro
	begin
	if (n == 0) then
		return 1
	else
		return n * fat(n - 1)
	end
end

begin

s=1
s=io.read()
f=5.5
print(f)

-- imprime o fatorial
print("Fatorial de s: ", fat(s))
end
