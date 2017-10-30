{
  open Lexing
  open Printf

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
    sprintf "%d-%d: caracter desconhecido %c" lin col c

	let erro lin col msg =
		  let mensagem = sprintf "%d-%d: %s" lin col msg in
		     failwith mensagem


type tokens = AND
						| BREAK
						| DO
						| ELSE 
					  | ELSEIF
 					  | END
	 				  | FALSE
		 			  | FOR
			 		  | FUNCTION
					  | IF
					  | IN
					  | LOCAL
					  | NIL
					  | NOT
					  | OR
					  | READ
					  | REPEAT
					  | RETURN
					  | THEN
					  | TONUMBER
					  | TRUE
					  | UNTIL
					  | WHILE
					  | WRITE
					  | ATRIB
					  | MAIS
					  | MENOS
					  | MAIOR
					  | MENOR
					  | DIV
					  | MULT
					  | MOD
					  | MAIORIGUAL
			 		  | MENORIGUAL
					  | IGUAL
					  | DIFERENTE
            | APARENT
            | FPARENT
					  | ACHAVES
					  | FCHAVES
					  | ACOLCHETE
					  | FCOLCHETE
					  | PONTOVIRG
					  | VIRGULA
					  | PONTO
						| LFLOAT of float
            | LITINT of int
            | LITSTRING of string
            | ID of string
            | EOF
}

let digito = ['0' - '9']

let pontoflutuante = digito+ ('.') (digito)+
let inteiro = digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\\n" | "\r\n"

let comentario = "--" [^ '['][^ '\r' '\n' ]* | "--[" [^ '[' ][^ '\r' '\n' ]*

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "--""[["     {let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
							 comentario_bloco (lin-1) col 0 lexbuf }
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
| '='        { ATRIB }
| '+'        { MAIS }
| '-'        { MENOS }
| '*'        { MULT }
| '/'        { DIV }
| "~="       { DIFERENTE }
| "=="       { IGUAL }
| pontoflutuante as num {let numero = float_of_string num in
													LFLOAT numero} 
| inteiro as num { let numero = int_of_string num in 
                    LITINT numero  } 
| "and"      { AND }
| "break"    { BREAK }
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
| '"'        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
                 LITSTRING str }
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }
and comentario_bloco lin col n = parse
  "]]"      { if n=0 then token lexbuf 
               else comentario_bloco lin col (n-1) lexbuf }
| "--""[["  { comentario_bloco lin col 0 lexbuf }
| _         { comentario_bloco lin col n lexbuf }
| eof       { erro lin col "Comentario nao fechado" }
and leia_string lin col buffer = parse
   '"'      { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"   { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\''"'   { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\''\\'  { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof       { erro lin col "A string nao foi fechada"}



