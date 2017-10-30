.assembly extern mscorlib{}
.assembly micro11{}
.method static void main() cil managed{
	.entrypoint
	.maxstack 3
	.locals init (int32 numero,int32 x)
	ldstr "Digite um numero: "
	call void [mscorlib]System.Console::WriteLine (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse(string)
	stloc numero
	ldloc numero
	call int32 Verifica(int32)
	stloc x
	ldloc x
	ldc.i4 1
	beq POS
	ldloc x
	ldc.i4 0
	beq ZERO
	br NEG
	POS:
		ldstr "Numero Positivo"
		call void [mscorlib]System.Console::WriteLine (string)
		br FIM
	ZERO:
		ldstr "Zero"
		call void [mscorlib]System.Console::WriteLine (string)
		br FIM
	NEG:
		ldstr "Numero Negativo"
		call void [mscorlib]System.Console::WriteLine (string)
		br FIM
	FIM:
		ret
}

.method public static int32 Verifica(int32 n) cil managed{
	.maxstack 4
	.locals init (int32 res)
	ldc.i4 0
	stloc res
	ldarg n
	ldc.i4.0
	bgt INCR
	ldarg n
	ldc.i4.0
	blt DECR
	ldc.i4.0
	stloc res
	br FIM
	INCR:
		ldloc res
		ldc.i4 1
		add
		stloc res
		br FIM
	DECR:
		ldloc res
		ldc.i4 1
		sub
		stloc res
		br FIM
	FIM:
		ldloc res
		ret
}


