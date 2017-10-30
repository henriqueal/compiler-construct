(* Parser preditivo *)
#load "lexico.cmo";;

open Lexico;;

let tk = ref EOF (* variável global para o token atual *)
let lexbuf = ref (Lexing.from_string "")

(* lê o próximo token *)             
let prox () = tk := Lexico.token !lexbuf

let to_str tk =
	match tk with
		  A -> "a"
		| B -> "b"
		| C -> "c"
		| D -> "d"
		| E -> "e"
		| F -> "f"
		| EOF -> "eof"

let erro esp =
	let mensagem = Printf.sprintf "Erro: esperava %s mas encontrei %s" esp (to_str !tk) in
		failwith mensagem

let consome t =
	if (!tk == t) then prox()
	else erro (to_str t)

let rec ntS () =
  match !tk with
      A -> ntX(); ntY(); ntZ()
    | C -> ntX(); ntY(); ntZ()
    | D -> ntX(); ntY(); ntZ()
    | _ -> erro "a, c ou d"
and ntX () =
  match !tk with
      A -> consome A; ntX(); consome B
    | B -> ()
    | C -> ()
    | D -> ()
    | E -> ()
    | F -> ()
    | _ -> erro "a, b, c, d, e ou f"                               
and ntY () =
  match !tk with
      C -> consome C; ntY(); ntZ(); consome C; ntX() 
    | D -> consome D;
    | _ -> erro "c ou d"
and ntZ () =
  match !tk with
      E -> consome E; ntZ(); ntY(); consome E
    | F -> consome F;
    | _ -> erro "e ou f"

let parser str =
  lexbuf := Lexing.from_string str;
  prox (); (* inicializa o token *)
  ntS ();
  match !tk with
    EOF -> Printf.printf "%s pertence a gramatica!\n" str
  | _ -> erro "fim da entrada"
