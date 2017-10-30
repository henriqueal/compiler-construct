type estado = int
type entrada = string
type simbolo = char
type posicao = int

type dfa = {
  transicao : estado -> simbolo -> estado;
  estado: estado;
  posicao: posicao
}

type token =
 | If
 | Then
 | Else
 | Print
 | Atrib
 | Add
 | Sub
 | Mult
 | Maior
 | AbrP
 | FecP
 | Id of string
 | Int of string
 | Branco
 | EOF

type estado_lexico = {
   pos_inicial: posicao; (* posição inicial na string *)
   pos_final: posicao; (* posicao na string ao encontrar um estado final recente *)
   ultimo_final: estado; (* último estado final encontrado *)
   dfa : dfa;
   rotulo : estado -> entrada -> token
}

let estado_morto:estado = -1

let estado_inicial:estado = 0

let eh_letra (c:simbolo) = ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')

let eh_digito (c:simbolo) = '0' <= c && c <= '9'

let eh_branco (c:simbolo) = c = ' ' || c = '\t' || c = '\n'

let eh_estado_final e el =
  let rotulo = el.rotulo in
  try
      let _ = rotulo e "" in true
  with _ -> false

let obtem_token_e_estado (str:entrada) el =
  let inicio =  el.pos_inicial
  and fim = el.pos_final
  and estado_final = el.ultimo_final
  and rotulo = el.rotulo in
  let tamanho = fim - inicio + 1 in
  let lexema = String.sub str inicio tamanho in
  let token = rotulo estado_final lexema in
  let proximo_el = { el with pos_inicial = fim + 1;
                             pos_final = -1;
                             ultimo_final = -1;
                             dfa = { el.dfa with estado = estado_inicial;
                                                 posicao = fim + 1 }}
  in
   (token, proximo_el)


let rec analisador (str:entrada) tam el =
  let posicao_atual = el.dfa.posicao
  and estado_atual = el.dfa.estado in
  if posicao_atual = tam && estado_atual = 7
	then
		failwith ("Erro lexico: caracter desconhecido :")
  else
  if posicao_atual >= tam
  then
    if el.ultimo_final >= 0
    then let token, proximo_el = obtem_token_e_estado str el in
      [token; EOF]
    else [EOF]
  else
    let simbolo = str.[posicao_atual]
    and transicao = el.dfa.transicao in
    let proximo_estado = transicao estado_atual simbolo in
    if proximo_estado = estado_morto
    then let token, proximo_el = obtem_token_e_estado str el in
      token :: analisador str tam proximo_el
    else
      let proximo_el =
        if eh_estado_final proximo_estado el
        then { el with pos_final = posicao_atual;
                       ultimo_final = proximo_estado;
                       dfa = { el.dfa with estado = proximo_estado;
                                           posicao = posicao_atual + 1 }}
        else { el with dfa = { el.dfa with estado = proximo_estado;
                                           posicao = posicao_atual + 1}}
      in
      analisador str tam proximo_el

let lexico (str:entrada) =
  let trans (e:estado) (c:simbolo) =
    match (e,c) with
    | (0, '+') -> 1
    | (0, '-') -> 2
    | (0, '*') -> 3
    | (0, '>') -> 4
    | (0, '(') -> 5
    | (0, ')') -> 6
    | (0, ':') -> 7
    | (0, _) when eh_digito c -> 9
    | (0, 'i') -> 10
    | (0, 'p') -> 12
    | (0, 'e') -> 17
    | (0, 't') -> 21
    | (0, _) when eh_branco c -> 25
    | (0, _) when eh_letra c -> 26
    | (0, _) ->
        failwith ("Erro lexico: caracter desconhecido " ^ Char.escaped c)
    | (7, '=') -> 8
    | (7,_) -> 
        failwith ("Erro lexico: caracter desconhecido :")
    | (9, _) when eh_digito c -> 9
    | (10, 'f') -> 11
    | (10, _)  when eh_letra c || eh_digito c-> 26
    | (11, _)  when eh_letra c || eh_digito c-> 26
    | (12, 'r')  -> 13
    | (12, _)  when eh_letra c || eh_digito c-> 26
    | (13, 'i')  -> 14
    | (13, _)  when eh_letra c || eh_digito c-> 26
    | (14, 'n')  -> 15
    | (14, _)  when eh_letra c || eh_digito c-> 26
    | (15, 't')  -> 16
    | (15, _)  when eh_letra c || eh_digito c-> 26
    | (16, _)  when eh_letra c || eh_digito c-> 26
    | (17, 'l')  -> 18
    | (17, _)  when eh_letra c || eh_digito c-> 26
    | (18, 's')  -> 19
    | (18, _)  when eh_letra c || eh_digito c-> 26
    | (19, 'e')  -> 20
    | (19, _)  when eh_letra c || eh_digito c-> 26
    | (20, _)  when eh_letra c || eh_digito c-> 26
    | (21, 'h')  -> 22
    | (21, _)  when eh_letra c || eh_digito c-> 26
    | (22, 'e')  -> 23
    | (22, _)  when eh_letra c || eh_digito c-> 26
    | (23, 'n')  -> 24
    | (23, _)  when eh_letra c || eh_digito c-> 26
    | (24, _)  when eh_letra c || eh_digito c-> 26
    | (25, _)  when eh_branco c -> 25
    | (26, _)  when eh_letra c || eh_digito c -> 26
    | _ -> estado_morto
 and rotulo e str =
  match e with
  | 1 -> Add
  | 2 -> Sub
  | 3 -> Mult
  | 4 -> Maior
  | 5 -> AbrP
  | 6 -> FecP
  | 8 -> Atrib
  | 9 -> Int str
  | 11 -> If
  | 16 -> Print
  | 20 -> Else
  | 24 -> Then
  | 10 
  | 12 
  | 13 
  | 14 
  | 15 
  | 17 
  | 18 
  | 19 
  | 21 
  | 22 
  | 23 
  | 26 -> Id str
  | 25 -> Branco
  | 7 -> failwith ("Erro lexico: sequencia desconhecida :")
  | _ -> failwith ("Erro lexico: sequencia desconhecida " ^ str)
in let dfa = { transicao = trans;
               estado = estado_inicial;
               posicao = 0 }
in let estado_lexico = {
  pos_inicial = 0;
  pos_final = -1;
  ultimo_final = -1;
  rotulo = rotulo;
  dfa = dfa
} in
  analisador str (String.length str) estado_lexico
