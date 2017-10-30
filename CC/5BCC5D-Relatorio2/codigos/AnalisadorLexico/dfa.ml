type estado = int
type estados = estado list
type simbolo = char
type entrada = simbolo list

let explode str =
  let n = String.length str in
  let rec explode' i =
    if i >= n then []
    else str.[i] :: explode' (i+1)
  in
    explode' 0

let transicao (s:estado) (c:simbolo) =
  match s with
    0 -> if (c = 'i') then (1:estado) else 1000
  | 1 -> if (c = 'f') then 2 else 1000
  | 1000 -> 1000
  | _ -> 1000

let rec dfa s (str:entrada) =
  match str with
   c::str1 -> dfa (transicao s c) str1
  | [] -> s = 2

let rec dfa2 trans (s:estado) (sfinais:estados) (str:entrada) =
  match str with
   c::str1 -> dfa (trans s c) str1
  | [] -> List.mem s sfinais
    
 
let aceita str =
  let entrada = explode str in
  dfa 0 entrada

let aceita2 str =
  let entrada = explode str in
  let sfinais = [2] in 
  dfa2 transicao 0 sfinais entrada
