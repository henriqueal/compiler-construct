{
  open Lexing
  open Printf
  open Sintatico

  exception Erro of string

  let incr_num_linha lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1;
                 pos_bol = pos.pos_cnum
      }

  let pos_atual lexbuf = lexbuf.lex_start_p

}

let digito = ['0' - '9']
let inteiro = '-'? digito+
let float = '-'? digito+ '.'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '['][^ '\r' '\n' ]* | "--[" [^ '[' ][^ '\r' '\n' ]*

rule token =
  parse
  | brancos { token lexbuf }
  | novalinha  { incr_num_linha lexbuf; token lexbuf }
  | comentario { token lexbuf }
  | "--[["       { comentario_bloco 0 lexbuf }
  | '+'   { MAIS (pos_atual lexbuf) }
  | '-'   { MENOS (pos_atual lexbuf) }
  | '*'   { MULT (pos_atual lexbuf) }
  | '/'   { DIV (pos_atual lexbuf) }
  | '<'   { MENOR (pos_atual lexbuf) }
  | "<="  { MENORIGUAL (pos_atual lexbuf)}
  | ">="  { MAIORIGUAL (pos_atual lexbuf)}
  | "=="  { IGUAL (pos_atual lexbuf) }
  | "!="  { DIFER (pos_atual lexbuf) }
  | '>'   { MAIOR (pos_atual lexbuf) }
  | " and "  { ELOG (pos_atual lexbuf) }
  | " or "  { OULOG (pos_atual lexbuf) }
  | '^'   { CONCAT (pos_atual lexbuf) }
  | '('   { APAR (pos_atual lexbuf) }
  | ')'   { FPAR (pos_atual lexbuf) }
  | '['   { ACOL (pos_atual lexbuf) }
  | ']'   { FCOL (pos_atual lexbuf) }
  | ','   { VIRG (pos_atual lexbuf) }
  | ".."  { PPTO (pos_atual lexbuf) }
  | '.'   { PTO (pos_atual lexbuf) }
  | ':'   { DPTOS (pos_atual lexbuf) }
  (*| ';'   { PTV (pos_atual lexbuf) }*)
  | "="  { ATRIB (pos_atual lexbuf) }
  | '"'   { let buffer = Buffer.create 1 in
            let str = leia_string buffer lexbuf in
               STRING (str, pos_atual lexbuf) }
  (*| "programa"   { PROGRAMA (pos_atual lexbuf) }*)
  | "function"     { FUNCAO (pos_atual lexbuf) }
  | "return"    { RETORNE (pos_atual lexbuf) }
  | "begin"     { INICIO (pos_atual lexbuf) }
  | "end"        { FIM (pos_atual lexbuf) }
  | "inteiro"    { INTEIRO (pos_atual lexbuf) }
  | "float"    { FLOAT (pos_atual lexbuf) }
  | "string"     { CADEIA (pos_atual lexbuf) }
  | "booleano"   { BOOLEANO (pos_atual lexbuf) }
  | "arranjo"    { ARRANJO (pos_atual lexbuf) }
  | "de"         { DE (pos_atual lexbuf) }
  | "registro"   { REGISTRO (pos_atual lexbuf) }
  | "do"      { DO (pos_atual lexbuf)}
  | "while"  { WHILE (pos_atual lexbuf)}
  | "for"      { FOR (pos_atual lexbuf)}
  | "passo"     { PASSO (pos_atual lexbuf)} 
  | "end"        { FIM (pos_atual lexbuf) }
  | "if"         { SE (pos_atual lexbuf) }
  | "then"      { ENTAO (pos_atual lexbuf) }
  | "else"      { SENAO (pos_atual lexbuf) }
  | "=io.read()"    { ENTRADA (pos_atual lexbuf) }
  | "= io.read()"    { ENTRADA (pos_atual lexbuf) }
  | "print"      { SAIDA (pos_atual lexbuf) }
  | "verdadeiro" { BOOL (true, pos_atual lexbuf) }
  | "falso"      { BOOL (false, pos_atual lexbuf) }
  | identificador as x    { ID (x, pos_atual lexbuf) }
  | inteiro as n  { INT (int_of_string n, pos_atual lexbuf) }
  | float as n { PFLOAT (float_of_string n, pos_atual lexbuf)}
  | _  { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf)) }
  | eof   { EOF }

and comentario_bloco n = parse
   "]]"      { if n=0 then token lexbuf 
               else comentario_bloco (n-1) lexbuf }
| "--[["       { comentario_bloco 0 lexbuf }
| novalinha  { incr_num_linha lexbuf; comentario_bloco n lexbuf }
| _          { comentario_bloco n lexbuf }
| eof        { failwith "Comentario nao fechado" }

and leia_string buffer = parse
   '"'      { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"     { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof       { raise (Erro "A string não foi terminada") }

