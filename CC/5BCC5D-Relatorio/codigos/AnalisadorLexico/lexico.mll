{
open Lexing
open Printf

let incr_num_linha lexbuf = 
	let posicao = lexbuf.lex_curr_p in
		lexbuf.lex_curr_p <- { 
			posicao with
			pos_lnum = posicao.pos_lnum + 1;
			pos_bol = posicao.pos_cnum;
		}

let msg_erro lexbuf c =
	let posicao = lexbuf.lex_curr_p in
		let lin = posicao.pos_lnum
		and col = posicao.pos_cnum - posicao.pos_bol in
			sprintf "%d-%d: Caractere desconhecido %c" lin col c


let msg_erro_comentario curr =
	let lin = curr.pos_lnum
	and col = curr.pos_cnum - curr.pos_bol in
		sprintf "%d-%d: Comentario nao fechado!" lin col

let msg_erro_string curr =
	let lin = curr.pos_lnum
	and col = curr.pos_cnum - curr.pos_bol in
		sprintf "%d-%d: String nao fechada!" lin col

type tokens =	BIBLIOTECA of string
					|SOMA
					| SUB
					| MULT
					| DIV
					| MOD

					| ATRIB
					| SOMAATRIB
					| SUBATRIB
					| MULTATRIB
					| DIVATRIB

					| INCR
					| DECR
	
					| MAIOR
					| MENOR
					| MAIORIGUAL
					| MENORIGUAL
					| IGUAL
	
					| NEG

					| E
					| OU

					| ABPAR
					| FCPAR
					| ABCOLC
					| FCCOLC
					| ABCHAVE
					| FCCHAVE

					| VIRG
					| PTVIRG

					| INT
					| CHAR
					| FLOAT
					| VOID

					| IF
					| ELSE
					| FOR
					| DO
					| WHILE

					| PRINTF
					| SCANF

					| RETURN
					| EXIT
					| BREAK
					| CONTINUE

					| NULL
					| INCLUDE

					| ID of string
					| CARACTERE of char
					| LITSTRING of string

					| LITINT of int
					| LITFLOAT of float         

					| EOF
}

let letra = ['a'-'z' 'A'-'Z']
let digito = ['0'-'9']

let caractere = '''(letra)'''
let identificador = letra (letra | digito | '_')*

let inteiro = ['-' '+']? digito+
let decimal = (digito+ '.' digito*) | (digito* '.' digito+)
let exp = ['e' 'E'] ['-' '+']? digito+
let flutuante = ['-' '+']? decimal exp?

let espaco = [' ' '\t']+
let nova_linha = '\r' | '\n' | "\r\n"

let comentario_linha = "//" [^ '\r' '\n']*

let biblioteca = ('<' letra+ ".h>") | ('\\' '"' letra+ ".h" '\\' '"')

rule token = parse
	| espaco    				{ token lexbuf }
	| nova_linha  			{ incr_num_linha lexbuf; token lexbuf }

	| comentario_linha	{ token lexbuf }
	| "/*"       			{ comentario_bloco 0 lexbuf.lex_curr_p lexbuf }

	| biblioteca as b		{ BIBLIOTECA b }
	
	| identificador as id 	{ ID id }

	| '+'        			{ SOMA }
	| '-'        			{ SUB }
	| '*'        			{ MULT }
	| '/'        			{ DIV }
	| '%'						{ MOD }

	| '='        			{ ATRIB }
	| "+="       			{ SOMAATRIB }
	| "-="       			{ SUBATRIB }
	| "*="       			{ MULTATRIB }
	| "/="       			{ DIVATRIB } 

	| "++"       			{ INCR }
	| "--"       			{ DECR }

	| '>'        			{ MAIOR }
	| '<'        			{ MENOR }
	| ">="       			{ MAIORIGUAL}
	| "<="	     			{ MENORIGUAL }
	| "=="       			{ IGUAL }

	| '!'        			{ NEG }

	| "&&"	    			{ E }
	| "||"       			{ OU }
 
	| '('        			{ ABPAR }
	| ')'        			{ FCPAR }
	| '['						{ ABCOLC }
	| ']'						{ FCCOLC }
	| '{' 	     			{ ABCHAVE }
	| '}'        			{ FCCHAVE }

	| ','        			{ VIRG } 
	| ';' 	     			{ PTVIRG }

	| "int"      			{ INT }
	| "char"     			{ CHAR }
	| "float"    			{ FLOAT }
	| "void"					{ VOID }	

	| "if"       			{ IF }
	| "else"    			{ ELSE }
	| "for"      			{ FOR }
	| "do" 	     			{ DO }
	| "while"    			{ WHILE }

	| "printf"   			{ PRINTF }
	| "scanf"    			{ SCANF }

	| "return"   			{ RETURN }
	| "exit"    			{ EXIT }
	| "break"    			{ BREAK }
	| "continue"			{ CONTINUE }

	| "NULL"					{ NULL }
	| "#include" 			{ INCLUDE }

	| '"'        			{ let buffer = Buffer.create 1 in 
		      		  		     let str = leia_string buffer lexbuf.lex_curr_p lexbuf in
		        	  			        LITSTRING str }
	
	| caractere as c 			{ CARACTERE c.[1] }

	| inteiro as num 			{ if (String.get num 0) = '+' then let n = int_of_string (String.sub num 1 (String.length (num)-1)) in
									     LITINT n
									  else let n = int_of_string num in
				 					     LITINT n }
	| flutuante as num  		{ let n = float_of_string num in
				  					     LITFLOAT n}

	| _ as c     				{ failwith (msg_erro lexbuf c) }
	| eof        				{ EOF }

and comentario_bloco n curr = parse
	"*/"				{ if n=0 then token lexbuf 
				  	  	  else comentario_bloco (n-1) curr lexbuf }
	| "/*"			{ comentario_bloco (n+1) curr lexbuf}
	| nova_linha 	{ incr_num_linha lexbuf; comentario_bloco n curr lexbuf }
 	| _    			{ comentario_bloco n curr lexbuf}
  	| eof				{ failwith (msg_erro_comentario curr) }

and leia_string buffer curr = parse
	'"'				{ Buffer.contents buffer}
	| "\\t"     	{ Buffer.add_char buffer '\t'; leia_string buffer curr lexbuf }
	| "\\n"     	{ Buffer.add_char buffer '\n'; leia_string buffer curr lexbuf }
	| nova_linha	{ incr_num_linha lexbuf; leia_string buffer curr lexbuf }
	| '\\' '"'  	{ Buffer.add_char buffer '"'; leia_string buffer curr lexbuf }
	| '\\' '\\'		{ Buffer.add_char buffer '\\'; leia_string buffer curr lexbuf }
	| _ as ch  		{ Buffer.add_char buffer ch; leia_string buffer curr lexbuf }
	| eof    		{ failwith (msg_erro_string curr) }
