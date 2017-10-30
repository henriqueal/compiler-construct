
.assembly extern mscorlib {}
.assembly nano06{}
.method static void main() cil managed
{
	.locals init (int32 n)
	.maxstack 2
	.entrypoint
	ldc.i4.1
	ldc.i4.2
	sub
	stloc n
	ldloc n
	call void [mscorlib]System.Console::WriteLine (int32)
	ret
}

