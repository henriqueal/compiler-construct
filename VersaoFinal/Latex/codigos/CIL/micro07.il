.assembly extern mscorlib{}
.assembly micro07{}
.method static void main() cil managed
{
	.entrypoint
	.maxstack 2
	.locals init (int32 programa,int32 numero,char opc)
	ldc.i4.1
	stloc programa

	LOOP:
		ldloc programa
		ldc.i4.1
		bne.un FIM
		ldstr "Digite um numero: "
		call void [mscorlib]System.Console::WriteLine (string)
		call string [mscorlib]System.Console::ReadLine ()
		call int32 [mscorlib]System.Int32::Parse(string)
		stloc numero
		ldloc numero
		ldc.i4.0
		bgt MAIOR0
		ldloc numero
		ldc.i4.0
		beq IGUAL0
		ldloc numero
		ldc.i4.0
		blt MENOR0

	MAIOR0:
		ldstr "Positivo."
		call void [mscorlib]System.Console::WriteLine (string)
		br VERIF

	IGUAL0:
		ldstr "O numero e igual a 0."
		call void [mscorlib]System.Console::WriteLine (string)
		br VERIF

	MENOR0:
		ldstr "Negativo."
		call void [mscorlib]System.Console::WriteLine (string)
		br VERIF

	VERIF:
		ldstr "Deseja finalizar? (S/N)"
		call void [mscorlib]System.Console::WriteLine (string)
		call string [mscorlib]System.Console::ReadLine ()
		call char [mscorlib]System.Char::Parse(string)
		stloc opc
		ldc.i4 83
		ldloc opc
		beq FIM
		br LOOP

	FIM:
		ret
}

