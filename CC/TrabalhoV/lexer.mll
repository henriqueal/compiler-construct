
{
open Parser
}
	
let white = [' ' '\t']+
let digit = ['0'-'9']
let int = '-'? digit+
let float = '-'? digit+ '.'? digit+
let letter = ['a'-'z' 'A'-'Z']
let id = letter+
	
rule read = 
  parse
  	| white   { read lexbuf }
	| "io.write"    { WRITE }		
	| "and"		{ AND } 
	| "break"	{ BREAK } 
	| "do"		{ DO } 
	| "else"	{ ELSE } 
	| "elseif"	{ ELSEIF } 
	| "end"		{ END } 
	| "false"	{ FALSE } 
	| "for"		{ FOR } 
	| "function"	{ FUNCTION } 
	| "goto"	{ GOTO } 
	| "if"		{ IF } 
	| "in"		{ IN } 
	| "local"	{ LOCAL } 
	| "nil"		{ NIL } 
	| "not"		{ NOT } 
	| "or"		{ OR } 
	| "repeat"	{ REPEAT } 
	| "return"	{ RETURN } 
	| "then"	{ THEN } 
	| "true"	{ TRUE } 
	| "until"	{ UNTIL } 
	| "while"	{ WHILE }
	| "+"		{ ADICAO }
	| "-"		{ SUBTRACAO }
	| "*"		{ MULTIPLICACAO }
	| "/"		{ DIVISAO }
	| "%"		{ MODULO }
	| "^"		{ EXPONENCIACAO }
	| "#"		{ COMPRIMENTO }
	| "=="		{ EQUIVALENTE }
	| "~="		{ NAOEQUIVALENTE }
	| "<="		{ MENOROUIGUAL }
	| ">="		{ MAIOROUIGUAL }
	| "<"		{ MENOR }
	| ">"		{ MAIOR }
	| "="		{ IGUAL }
	| "("		{ ABREPARENTESE }
	| ")"		{ FECHAPARENTESE }
	| "{"		{ ABRECHAVES }
	| "}"		{ FECHACHAVES }
	| "["		{ ABRECOLCHETE }
	| "]"		{ FECHACOLCHETE }
	| "::"		{ DOISPONTOSDUPLO }
	| ";"		{ PONTOEVIRGULA }
	| ":"		{ DOISPOTNOS }
	| ","		{ VIRGULA }
	| "."		{ PONTO }
	| ".."		{ PONTODUPLO }
	| "..."		{ PONTOTRIPLO }	
	| " ' "		{ ASPASSIMPLES }
	| id      { ID (Lexing.lexeme lexbuf) }
	| int     { INT (int_of_string (Lexing.lexeme lexbuf)) }
	| float   { FLOAT (float_of_string (Lexing.lexeme lexbuf))}
	| eof     { EOF }
