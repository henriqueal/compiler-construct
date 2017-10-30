{
  open Lexing
  open Printf 
  open Sintatico

  exception Erro of string

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }
  
}

let digito = ['0' - '9']

let inteiro = digito+
let pontoflutuante = digito+ ('.') (digito)+


let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '['][^ '\r' '\n' ]* | "--[" [^ '[' ][^ '\r' '\n' ]*



rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "--""[["   { comentario_bloco 0 lexbuf }
| '('        { APARENT }
| ')'        { FPARENT }
| '{'        { ACHAVES }
| '}'        { FCHAVES }
| '['        { ACOLCHETE }
| ']'        { FCOLCHETE }
| '%'        { MOD }
| '>'        { MAIOR }
| '<'        { MENOR }
| ">="       { MAIORIGUAL }
| "<="       { MENORIGUAL }
| ';'        { PONTOVIRG }
| ','        { VIRGULA }
| '.'        { PONTO }
(*| ".."	     {PONTOPONTO}*)
| ':'	     {DOISPONTOS}
| '='        { ATRIB }
| '+'        { MAIS }
| '-'        { MENOS }
| '*'        { MULT }
| '/'        { DIV }
| "~="       { DIFERENTE }
| "=="       { IGUAL }
| pontoflutuante as num {let numero = float_of_string num in
													FLOAT numero} 
| "float"    { PFLUT }
| inteiro as num { let numero = int_of_string num in 
                    INT numero  } 
| "int"      { INTEIRO }
| "char"     { CHAR }
| "and"      { AND }
(*| "break"    { BREAK }*)
| "do"       { DO }
| "else"     { ELSE }
| "elseif"   { ELSEIF }
| "end"      { END }
| "false"    { FALSE }
| "for"      { FOR }
| "function" { FUNCTION }
| "if"       { IF }
| "in"       { IN }
| "local"    { LOCAL }
| "nil"      { NIL }
| "not"      { NOT }
| "io.read"  { READ }
| "io.write" { WRITE }
| "or"       { OR }
| "repeat"   { REPEAT }
| "return"   { RETURN }
| "then"     { THEN }
| "true"     { TRUE }
| "until"    { UNTIL }
| "tonumber" { TONUMBER }
| "while"    { WHILE }
| identificador as id { ID id }
| '"'        { let buffer = Buffer.create 1 in 
               let str = leia_string buffer lexbuf in
                 STRING str }
| _     { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf)) }
| eof        { EOF }
and comentario_bloco n = parse
  "]]"      { if n=0 then token lexbuf 
               else comentario_bloco (n-1) lexbuf }
| "--""[["  { comentario_bloco 0 lexbuf }
| "\n"      { incr_num_linha lexbuf; comentario_bloco n lexbuf}
| _         { comentario_bloco n lexbuf }
| eof       { raise (Erro "Comentário não terminado")  }
and leia_string buffer = parse
   '"'      { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"     { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\''"'   { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\''\\'  { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof       { raise (Erro "A string não foi terminada") }


