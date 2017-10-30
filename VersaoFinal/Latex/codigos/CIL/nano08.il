
.assembly extern mscorlib {}
.assembly nano08{}
.method static void main() cil managed
{
	.locals init (int32 n)
	.maxstack 2
	.entrypoint
	ldc.i4.1
	stloc n
	ldloc n
	ldc.i4.1
	beq IGUAL
	ldc.i4.0
	call void [mscorlib]System.Console::WriteLine (int32)
	br FIM

	IGUAL:
		ldloc n
		call void [mscorlib]System.Console::WriteLine (int32)

	FIM:
		ret
}

