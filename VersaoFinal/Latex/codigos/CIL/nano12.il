.assembly extern mscorlib {}
.assembly nano12{}
.method static void main() cil managed
{
	.entrypoint
	.maxstack 3
	.locals init (int32 n,int32 m,int32 x)
	ldc.i4.1
	stloc n
	ldc.i4.2
	stloc m
	ldc.i4.5
	stloc x

	LOOP:
		ldloc x
		ldloc n
		ble FIM
		ldloc n
		ldloc m
		beq COND_SE
		ldc.i4.0
		call void [mscorlib]System.Console::WriteLine (int32)
		br DECREMENTA

	COND_SE:
		ldloc n
		call void [mscorlib]System.Console::WriteLine (int32)
		br DECREMENTA

	DECREMENTA:
		ldloc x
		ldc.i4.1
		sub
		stloc x
		br LOOP

	FIM:
		ret
}

