
{
open Parser
}
	
let white = [' ' '\t' '\n']+
let digit = ['0'-'9']
let int = '-'? digit+
let float = '-'? digit+ '.'? digit+
let letter = ['a'-'z' 'A'-'Z']
let id = letter+
	
rule read = 
  parse
  	| white   { read lexbuf }
	| " ( "	{ ABRECOLCHETE }
	| " ) "	{ FECHACOLCHETE }
	| " { "	{ ABRECHAVES }
	| " } "	{ FECHACHAVES }
	| " : "	{ DOISPONTOS }
	| " :: "	{ DOISDOISPONTOS }
	| " ; "	{ PONTOEVIRGULA }
	| " , "	{ VIRGULA }
	| " quadrado "	{ QUADRADO }
	| " . "	{ PONTO }
	| " .. "	{ PONTOPONTO }
	| " ... "	{ PONTOPONTOPONTO }
	| " = "	{ ATRIBUICAO }
	| " + "	{ SOMA }
	| " - "	{ SUBTRACAO }
	| " * "	{ MULTIPLICACAO }
	| " / "	{ DIVISAO }
	| " % "	{ MODULO }
	| " ^ "	{ EXPONENCIACAO }
	| " == "	{ IGUALDADE }
	| " ~= "	{ DIFERENTE }
	| " <= "	{ MENORIGUAL }
	| " >= "	{ MAIORIGUAL }
	| " < "	{ MENOR }
	| " > "	{ MAIOR }
	| " and "	{ AND }
	| " break "	{ BREAK }
	| " do "	{ DO }
	| " else "	{ ELSE }
	| " elseif "	{ ELSEIF }
	| " end "	{ END }
	| " false "	{ FALSE }
	| " for "	{ FOR }
	| " function "	{ FUNCTION }
	| " goto "	{ GOTO }
	| " if "	{ IF }
	| " in "	{ IN }
	| " local "	{ LOCAL }
	| " nil "	{ NIL }
	| " not "	{ NOT }
	| " or "	{ OR }
	| " repeat "	{ REPEAT }
	| " return "	{ RETURN }
	| " then "	{ THEN }
	| " true "	{ TRUE }
	| " until "	{ UNTIL }
	| " while "	{ WHILE }
	| id      { ID (Lexing.lexeme lexbuf) }
	| int     { INT (int_of_string (Lexing.lexeme lexbuf)) }
	| float   { FLOAT (float_of_string (Lexing.lexeme lexbuf))}
	| eof     { EOF }
