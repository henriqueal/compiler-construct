
.assembly extern mscorlib {}
.assembly nano05{}
.method static void main() cil managed
{
	.locals init (int32 n)
	.maxstack 1
	.entrypoint
	ldc.i4.2
	stloc n
	ldloc n
	call void [mscorlib]System.Console::WriteLine (int32)
	ret
}

