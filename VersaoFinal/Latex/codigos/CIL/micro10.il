.assembly extern mscorlib{}
.assembly micro10{}
.method static void main() cil managed
{
	.entrypoint
	.maxstack 10
	.locals init (int32 numero, int32 fat)

	ldstr "Digite um numero: "
	call void [mscorlib]System.Console::WriteLine (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse(string)
	stloc numero
	ldloc numero
	call int32 fatorial(int32)
	stloc fat
	ldloc fat
	call void [mscorlib]System.Console::WriteLine (int32)
	ret
}

.method public static int32 fatorial(int32 n) cil managed
{
	.maxstack 10
	ldarg n
	ldc.i4.0
	ble RET1
	ldarg n
	ldc.i4.1
	sub
	call int32 fatorial(int32)
	ldarg n
	mul
	br FIM

	RET1:
		ldc.i4.1
		br FIM

	FIM:
		ret
}


