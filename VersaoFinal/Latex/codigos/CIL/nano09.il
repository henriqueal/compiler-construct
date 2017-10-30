.assembly extern mscorlib {}
.assembly nano09{}
.method static void main() cil managed
{
	.locals init (float32 n)
	.maxstack 2
	.entrypoint
	ldc.r4 1
	ldc.r4 2
	div
	ldc.r4 1
	add
	stloc n
	ldloc n
	ldc.r4 1
	beq IGUAL
	ldc.r4 0
	call void [mscorlib]System.Console::WriteLine (float32)
	ret

	IGUAL:
		ldloc n
		call void [mscorlib]System.Console::WriteLine (float32)
		ret
}

