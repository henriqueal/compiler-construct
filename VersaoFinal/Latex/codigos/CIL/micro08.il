.assembly extern mscorlib{}
.assembly micro08{}
.method static void main() cil managed
{
	.entrypoint
	.maxstack 2
	.locals init (int32 numero)
	ldc.i4.1
	stloc numero

	LOOP:
		ldloc numero
		ldc.i4.0
		beq FIM
		ldstr "Digite um numero: "
		call void [mscorlib]System.Console::WriteLine (string)
		call string [mscorlib]System.Console::ReadLine ()
		call int32 [mscorlib]System.Int32::Parse(string)
		stloc numero
		ldloc numero
		ldc.i4 10
		bgt MAIOR10
		ldstr "O numero eh menor do que 10."
		call void [mscorlib]System.Console::WriteLine (string)
		br LOOP

	MAIOR10:
		ldstr "O numero eh maior do que 10."
		call void [mscorlib]System.Console::WriteLine (string)
		br LOOP

	FIM:
		ret
}


