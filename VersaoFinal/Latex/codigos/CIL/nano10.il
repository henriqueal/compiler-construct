.assembly extern mscorlib {}
.assembly nano10{}
.method static void main() cil managed
{
	.locals init (int32 n, int32 m)
	.entrypoint
	.maxstack 2
	ldc.i4.1
	stloc n
	ldc.i4.2
	stloc m
	ldloc n
	ldloc m
	beq IGUAL
	ldc.i4.0
	call void [mscorlib]System.Console::WriteLine (int32)
	ret	

	IGUAL:
		ldloc n
		call void [mscorlib]System.Console::WriteLine (int32)
		ret		

}

