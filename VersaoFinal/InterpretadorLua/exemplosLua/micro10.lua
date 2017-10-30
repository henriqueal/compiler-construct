fat, numero : inteiro

function fatorial(n:inteiro) :inteiro
	begin
	if (n == 0) then
		return 1
	else
		return n * fatorial(n - 1)
	end
end

begin
print("Digite um numero:")

numero = tonumber(io.read())

fat = fatorial(numero)

print("O fatorial de", numero, "eh: ", fat)
end
