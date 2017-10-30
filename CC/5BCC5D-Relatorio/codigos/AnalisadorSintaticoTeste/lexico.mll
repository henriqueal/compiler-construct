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

type tokens =	A
					| B
					| C
					| D
					| E
					| F
					| EOF
}

let espaco = [' ' '\t']+
let nova_linha = '\r' | '\n' | "\r\n"

rule token = parse
	'a'  	 					{ A }
	| 'b'  					{ B }
	| 'c'  					{ C }
	| 'd'  					{ D }
	| 'e'  					{ E }
	| 'f'  					{ F }
	| espaco    				{ token lexbuf }
	| nova_linha  				{ incr_num_linha lexbuf; token lexbuf }
	| _ as c     				{ failwith (msg_erro lexbuf c) }
	| eof        				{ EOF }

