.assembly extern mscorlib{}
.assembly micro05{}
.method static void main() cil managed
 {
	.entrypoint
	.maxstack 10
	.locals init (int32 x,int32 h,int32 m,char sexo,string nome)
	ldc.i4.1
	stloc x
	ldc.i4.0
	stloc h
	ldc.i4.0
	stloc m
	LOOP:
		ldloc x
		ldc.i4.5
		bgt IMPRIME
		ldstr "Digite o nome: "
		call void [mscorlib]System.Console::WriteLine (string)
		call string [mscorlib]System.Console::ReadLine ()
		stloc nome
		ldstr "H - Homem ou M - Mulher: "
		call void [mscorlib]System.Console::WriteLine (string)
		call string [mscorlib]System.Console::ReadLine ()
		call char [mscorlib]System.Char::Parse(string)
		stloc sexo
		ldloc sexo
		ldc.i4 72
		bne.un VERIFMULHER
		ldloc h
		ldc.i4.1
		add
		stloc h
		br INCRX
	INCRX:
		ldloc x
		ldc.i4.1
		add
		stloc x
		br LOOP
	VERIFMULHER:
		ldloc sexo
		ldc.i4 77
		bne.un OUTROCASO
		ldloc m
		ldc.i4.1
		add
		stloc m
		br INCRX
	OUTROCASO:
		ldstr "Sexo so pode ser H ou M!"
		call void [mscorlib]System.Console::WriteLine (string)
		br LOOP
	IMPRIME:
		ldstr "Total homens inseridos: "
		call void [mscorlib]System.Console::WriteLine (string)
		ldloc h
		call void [mscorlib]System.Console::WriteLine (int32)
		ldstr "Total mulheres inseridas: "
		call void [mscorlib]System.Console::WriteLine (string)
		ldloc m
		call void [mscorlib]System.Console::WriteLine (int32)
	FIM:
		ret
}

