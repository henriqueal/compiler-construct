.assembly extern mscorlib{}
.assembly micro04{}
.method static void main() cil managed
{
	.entrypoint
	.maxstack 5
	.locals init (int32 x,int32 num,int32 intervalo)
	ldc.i4 x
	stloc num
	ldc.i4.1
	stloc x

	COMECALOOP:
		ldloc x
		ldc.i4.5
		bgt ESCREVEQTD
		ldstr "Escreva um numero: "
		call void [mscorlib]System.Console::WriteLine (string)
		call string [mscorlib]System.Console::ReadLine ()
		call int32 [mscorlib]System.Int32::Parse(string)
		stloc intervalo
		ldloc x
		ldc.i4.1
		add
		stloc x
		ldloc intervalo
		ldc.i4 10
		bge MAIORQUE10
		br COMECALOOP

	MAIORQUE10:
		ldloc intervalo
		ldc.i4 150
		ble MENORQUE150
		br COMECALOOP

	MENORQUE150:
		ldloc num
		ldc.i4.1
		add
		stloc num
		br COMECALOOP

	ESCREVEQTD:
		ldstr "Quantidade de numeros digitados no intervalo entre 10 e 150"
		call void [mscorlib]System.Console::WriteLine (string)
		ldloc num
		call void [mscorlib]System.Console::WriteLine (int32)
		br FIM

	FIM:
		ret
}


