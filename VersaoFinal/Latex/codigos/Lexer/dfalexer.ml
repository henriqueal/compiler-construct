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
 | Print
 | Else
 | Then
 | Atribuicao
 | Mais
 | Menos
 | Maior
 | Menor
 | Divisao
 | Multiplicacao
 | PAberto
 | PFechado
 | PontoVirgula
 | Igual
 | DoisPontos
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
                                           posicao = posicao_atual + 1 }}
      in
      analisador str tam proximo_el

let lexico (str:entrada) =
  let trans (e:estado) (c:simbolo) =
    match (e,c) with
  | (0, 'i') -> 7
  | (0, 'p') -> 1
  | (0, 't') -> 9
  | (0, 'e') -> 10
  | (0, ':') -> 19
  | (0, '=') -> 21
  | (0, '+') -> 22
  | (0, '-') -> 23
  | (0, '>') -> 24
  | (0, '<') -> 25
  | (0, '/') -> 26
  | (0, '*') -> 27
  | (0, '(') -> 28
  | (0, ')') -> 29
  | (0, ';') -> 30
  | (0, _) when eh_letra c -> 6
  | (0, _) when eh_digito c -> 17
  | (0, _) when eh_branco c -> 18
  | (0, _) ->
  failwith ("Erro lexico: caracter desconhecido " ^ Char.
escaped c)
  | (1, 'r') -> 2
  | (2, 'i') -> 3
  | (3, 'n') -> 4
  | (4, 't') -> 5
  | (7, 'f') -> 8
  | (9, 'h') -> 11
  | (11, 'e') -> 12
  | (12, 'n') -> 13
  | (10, 'l') -> 14
  | (14, 's') -> 15
  | (15, 'e') -> 16
  | (19, '=') -> 20
  | (1, _) when eh_letra c || eh_digito c -> 6
  | (2, _) when eh_letra c || eh_digito c -> 6
  | (3, _) when eh_letra c || eh_digito c -> 6
  | (4, _) when eh_letra c || eh_digito c -> 6
  | (5, _) when eh_letra c || eh_digito c -> 6
  | (6, _) when eh_letra c || eh_digito c -> 6
  | (7, _) when eh_letra c || eh_digito c -> 6
  | (8, _) when eh_letra c || eh_digito c -> 6
  | (9, _) when eh_letra c || eh_digito c -> 6
  | (10, _) when eh_letra c || eh_digito c -> 6
  | (11, _) when eh_letra c || eh_digito c -> 6
  | (12, _) when eh_letra c || eh_digito c -> 6
  | (13, _) when eh_letra c || eh_digito c -> 6
  | (14, _) when eh_letra c || eh_digito c -> 6
  | (15, _) when eh_letra c || eh_digito c -> 6
  | (6, _) when eh_letra c || eh_digito c -> 6
  | (17, _) when eh_digito c -> 17
  | (18, _) when eh_branco c -> 18
  | _ -> estado_morto
  and rotulo e str =
  match e with
  | 8 -> If
  | 1
  | 2
  | 3
  | 4
  | 6
  | 7
  | 9
  | 10
  | 11
  | 12
  | 14
  | 15 -> Id str
  | 17 -> Int str
  | 18 -> Branco
  | 5 -> Print
  | 13 -> Then
  | 16 -> Else
  | 19 -> DoisPontos
  | 20 -> Atribuicao
  | 21 -> Igual
  | 22 -> Mais
  | 23 -> Menos
  | 24 -> Maior
  | 25 -> Menor
  | 26 -> Divisao
  | 27 -> Multiplicacao
  | 28 -> PAberto
  | 29 -> PFechado
  | 30 -> PontoVirgula
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
