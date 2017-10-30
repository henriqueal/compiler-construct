#load "lexico.cmo";;
open Sintatico;;

type variavel = XYZ of variavel * variavel * variavel
             | AXB of string * variavel * string
             | YCYZCX of string * variavel * variavel * string * variavel
             | YD of string  
             | ZEZYE of  string * variavel * variavel * string
             | ZF of string
             | VAZIO 
                                
let tk = ref EOF
let lexbuf = ref (Lexing.from_string "")
           
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
  let msg = Printf.sprintf "Erro: esperava %s mas encontrei %s"
      	esp (to_str !tk)
  in
  failwith msg

let consome t = if (!tk == t) then prox() else erro (to_str t)
                                                   
let rec ntS () =
  match !tk with
    A     -> let var1 = ntX() in 
             let var2 = ntY() in 
             let var3 = ntZ() in 
             XYZ (var1, var2, var3)
  | C     -> let var1 = ntX() in 
             let var2 = ntY() in 
             let var3 = ntZ() in 
             XYZ (var1, var2, var3)
  | D     -> let var1 = ntX() in 
             let var2 = ntY() in 
             let var3 = ntZ() in 
             XYZ (var1, var2, var3)
  | _     -> erro "a, c ou d"
                          
and ntX () =
  match !tk with
		A     -> let _ = consome A in
				     let var1 = ntX() in
					   let _ = consome B in 
					   AXB(to_str A, var1, to_str B)
  | B 		-> VAZIO
  | C 		-> VAZIO
  | D 		-> VAZIO
  | E 		-> VAZIO
  | F 		-> VAZIO    
  | _ 		-> erro "a" 

and ntY () =
  match !tk with
    C 		-> let _ = consome C in 
         		 let var1 = ntY() in 
		         let var2 = ntZ() in
		         let _ = consome C in
		         let var3 = ntX() in
		         YCYZCX(to_str C, var1, var2, to_str C, var3)
  | D  		-> let _ = consome D in
             YD(to_str D)
  | _ 		-> erro "C ou D"     

and ntZ () = 
  match !tk with
   E      -> let _ = consome E in 
             let var1 = ntZ() in 
             let var2 = ntY() in 
             let _ = consome E in
             ZEZYE(to_str E , var1, var2, to_str E)
 | F      -> let f = consome F in 
             ZF(to_str F)               
 | _			-> erro "e ou f"
                                                              
let parser str =
  lexbuf := Lexing.from_string str;
  prox (); 
  let arv = ntS () in
  match !tk with
    EOF -> let _ = Printf.printf "Ok!\n" in arv
  | _ -> erro "fim da entrada"

let teste () =
  let entrada =
      "abcdfcf"
  in
  parser entrada
