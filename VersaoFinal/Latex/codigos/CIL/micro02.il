.assembly extern mscorlib {}
.assembly micro02{}
.method static void main() cil managed
{
	.entrypoint
	.maxstack 2
	.locals init (int32 num1,int32 num2)
	ldstr "Escreva o primeiro numero: "
	call void [mscorlib]System.Console::WriteLine (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse(string)
	stloc num1
	ldstr "Escreva o segundo numero: "
	call void [mscorlib]System.Console::WriteLine (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse(string)
	stloc num2
	ldloc num1
	ldloc num2
	bgt PRIMEIRO
	ldstr "Segundo numero eh maior que o primeiro!"
	call void [mscorlib]System.Console::WriteLine (string)
	ldstr "Primeiro numero: "
	call void [mscorlib]System.Console::WriteLine (string)
	ldloc num1
	call void [mscorlib]System.Console::WriteLine (int32)
	ldstr "Segundo numero: "
	call void [mscorlib]System.Console::WriteLine (string)
	 ldloc num2
	call void [mscorlib]System.Console::WriteLine (int32)
	br FIM

	PRIMEIRO:
		ldstr "Primeiro numero eh maior que o segundo!"
		call void [mscorlib]System.Console::WriteLine (string)
		ldstr "Primeiro numero: "
		call void [mscorlib]System.Console::WriteLine (string)
		ldloc num1
		call void [mscorlib]System.Console::WriteLine (int32)
		ldstr "Segundo numero: "
		call void [mscorlib]System.Console::WriteLine (string)
		ldloc num2
		call void [mscorlib]System.Console::WriteLine (int32)

	FIM:
		ret
}


