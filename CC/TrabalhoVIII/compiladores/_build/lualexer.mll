{
  open Parser
  open Lexing
  open Printf
  exception Erro of string
  
  let incr_num_linha lexbuf =
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d:%d: caracter desconhecido %c" lin col c

  let pos_atual lexbuf = lexbuf.lex_start_p
}

let digito = ['0' - '9']
let inteiro = digito+
let float = '-'? digito+ '.'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '['][^ '\r' '\n' ]* | "--[" [^ '[' ][^ '\r' '\n' ]*

rule token =
  parse
|  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "--""[["       { comentario_bloco 0 lexbuf }
| '('        { ABREPARENTESE (pos_atual lexbuf) }
| ')'        { FECHAPARENTESE (pos_atual lexbuf) }
| '['        { ABRECOLCHETE (pos_atual lexbuf) }
| ']'        { FECHACOLCHETE (pos_atual lexbuf) }
| '{'        { ABRECHAVES (pos_atual lexbuf) }
| '}'        { FECHACHAVES (pos_atual lexbuf) }

| '+'	     { SOMA (pos_atual lexbuf) }
| '-'	     { SUBTRACAO (pos_atual lexbuf) }
| '*'	     { MULTIPLICACAO (pos_atual lexbuf) }
| '/'	     { DIVISAO (pos_atual lexbuf) }
| '%'	     { MODULO (pos_atual lexbuf) }
| '^'	     { EXPONENCIACAO (pos_atual lexbuf) }

| "=="	     { IGUALDADE (pos_atual lexbuf) }
| "~="	     { DIFERENTE (pos_atual lexbuf) }
| ">="	     { MAIORIGUAL (pos_atual lexbuf) }
| "<="	     { MENORIGUAL (pos_atual lexbuf) }
| '>'	     { MAIOR (pos_atual lexbuf) }
| '<'	     { MENOR (pos_atual lexbuf) }

| '#'          { QUADRADO (pos_atual lexbuf) }
| ':'	     { DOISPONTOS (pos_atual lexbuf) }
| "::"	     { DOISDOISPONTOS (pos_atual lexbuf) }
| ';'	     { PONTOEVIRGULA (pos_atual lexbuf) }
| ','	     { VIRGULA (pos_atual lexbuf) }
| '.'	     { PONTO (pos_atual lexbuf) }
| ".."	     { PONTOPONTO (pos_atual lexbuf) }
| "..."	     { PONTOPONTOPONTO (pos_atual lexbuf) }

| "="       { ATRIBUICAO (pos_atual lexbuf) }
| inteiro as num { let numero = int_of_string num in
                    INT (numero, pos_atual lexbuf)  }
| float { FLOAT ((float_of_string (Lexing.lexeme lexbuf)), pos_atual lexbuf )}
| "and"      { AND (pos_atual lexbuf) }
| "break"    { BREAK (pos_atual lexbuf) }
| "do"	     { DO (pos_atual lexbuf) }
| "else"     { ELSE (pos_atual lexbuf) }
| "elseif"   { ELSEIF (pos_atual lexbuf) }
| "end"	     { END (pos_atual lexbuf) }
| "false"    { FALSE (pos_atual lexbuf) }
| "for"      { FOR (pos_atual lexbuf) }
| "function" { FUNCTION (pos_atual lexbuf) }
| "goto"     { GOTO (pos_atual lexbuf) }
| "if"       { IF (pos_atual lexbuf) }
| "in" 	     { IN (pos_atual lexbuf) }
| "local"    { LOCAL (pos_atual lexbuf) }
| "nil"	     { NIL (pos_atual lexbuf) }
| "not"	     { NOT (pos_atual lexbuf) }
| "or"	     { OR (pos_atual lexbuf) }
| "repeat"   { REPEAT (pos_atual lexbuf) }
| "return"   { RETURN (pos_atual lexbuf) }
| "then"     { THEN (pos_atual lexbuf) }
| "true"     { TRUE (pos_atual lexbuf) }
| "until"    { UNTIL (pos_atual lexbuf) }
| "while"    { WHILE (pos_atual lexbuf) }
| "print"    { PRINT (pos_atual lexbuf) }
| "io.read"    { READ (pos_atual lexbuf) }
| "tonumber" {TONUMBER (pos_atual lexbuf) }
| "int" 	{INTEIRO (pos_atual lexbuf) }
| "float"     {PONTOFLUTUANTE (pos_atual lexbuf) }
| "char"	{CHAR (pos_atual lexbuf) }


| identificador as id { ID (id, pos_atual lexbuf) }
| '"'        { let buffer = Buffer.create 1 in
               let str = leia_string buffer lexbuf in
                STRING (str, pos_atual lexbuf)}
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }
and comentario_bloco n = parse
   "]]"   { if n=0 then token lexbuf
            else comentario_bloco (n-1) lexbuf }
| "--""[["    { comentario_bloco (0) lexbuf }
| _       { comentario_bloco n lexbuf }
| eof     { failwith "Comentário não fechado" }
and leia_string buffer = parse
   '"'    { Buffer.contents buffer}
| "\\t"   { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"   { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\'  { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof     { failwith "A string não foi fechada"}
