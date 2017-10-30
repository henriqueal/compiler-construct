
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
  | "#include" { INCLUDE }
  | "main" { MAIN }
  | "'"     { ASPASSIMPLES }
  | ":"     { DOISPONTOS }
  | "."     { PONTO }
  | ";"     { PONTOVIRGULA }
  | ","     { VIRGULA }
  | "&"     { ECOMERCIAL }
  | ">"     { MAIOR }
  | ">="     { MAIORIGUAL }
  | "<"     { MENOR }
  | "<="    { MENORIGUAL }
  | "!="     { DIFERENTE }
  | "=="     { IGUAL }
  | "++"    { MAISMAIS }
  | "--"    { MENOSMENOS}
  | "+"     { MAIS }
  | "-"     { MENOS }
  | "*"     { MULTIPLICACAO }
  | "/"     { DIVISAO }
  | "%"     { DIVISAOINTEIRA }
  | "("     { APAR }
  | ")"     { FPAR }
  | "{"     { ACHA }
  | "}"     { FCHA }
  | "let"   { LET }
  | "="     { ATRIBUICAO }
  | "in"    { IN }
  | "printf" { PRINTF }
  | "scanf" { SCANF }
  | "switch" { SWITCH }
  | "case"  { CASE }
  | "default" { DEFAULT }
  | "if"    { IF }
  | "else"  { ELSE }
  | "while" { WHILE }
  | "for"   { FOR }
  | id      { ID (Lexing.lexeme lexbuf) }
  | int     { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | float   { FLOAT (float_of_string (Lexing.lexeme lexbuf))}
  | eof     { EOF }
  

  