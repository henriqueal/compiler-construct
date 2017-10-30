.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'cel'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module cel.exe // GUID = {2CB4B67B-10AD-4DBB-9508-123065B8CB4A}


.namespace CelParaFar
{
  .class private auto ansi beforefieldinit Programa
  	extends [mscorlib]System.Object
  {

    // method line 1
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Programa::.ctor

    // method line 2
    .method private static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 68 (0x44)
	.maxstack 3
	.locals init (
		int32	V_0,
		int32	V_1)
	IL_0000:  ldstr bytearray (
	54 00 61 00 62 00 65 00 6c 00 61 00 20 00 64 00  // T.a.b.e.l.a. .d.
	65 00 20 00 63 00 6f 00 6e 00 76 00 65 00 72 00  // e. .c.o.n.v.e.r.
	73 00 e3 00 6f 00 3a 00 20 00 43 00 65 00 6c 00  // s...o.:. .C.e.l.
	73 00 69 00 75 00 73 00 20 00 2d 00 3e 00 20 00  // s.i.u.s. .-.>. .
	46 00 61 00 68 00 72 00 65 00 6e 00 68 00 65 00  // F.a.h.r.e.n.h.e.
	69 00 74 00 01 )                                 // i.t..
	
	IL_0005:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_000a:  ldstr "Digite a temperatura em Celsius: "
	IL_000f:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0014:  call string class [mscorlib]System.Console::ReadLine()
	IL_0019:  call int32 int32::Parse(string)
	IL_001e:  stloc.0 
	IL_001f:  ldloc.0 
	IL_0020:  ldc.i4.s 0x09
	IL_0022:  mul 
	IL_0023:  ldc.i4.5 
	IL_0024:  div 
	IL_0025:  ldc.i4.s 0x20
	IL_0027:  add 
	IL_0028:  stloc.1 
	IL_0029:  ldstr bytearray (
	41 00 20 00 6e 00 6f 00 76 00 61 00 20 00 74 00  // A. .n.o.v.a. .t.
	65 00 6d 00 70 00 65 00 72 00 61 00 74 00 75 00  // e.m.p.e.r.a.t.u.
	72 00 61 00 20 00 e9 00 3a 00 20 00 01 )         // r.a. ...:. ..
	
	IL_002e:  ldloc.1 
	IL_002f:  box [mscorlib]System.Int32
	IL_0034:  ldstr " F"
	IL_0039:  call string string::Concat(object, object, object)
	IL_003e:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0043:  ret 
    } // end of method Programa::Main

  } // end of class CelParaFar.Programa
}

