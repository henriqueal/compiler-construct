
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRGULA
  | UNTIL
  | TRUE
  | THEN
  | SUBTRACAO
  | STRING of (string)
  | SOMA
  | RETURN
  | REPEAT
  | QUADRADO
  | PONTOPONTOPONTO
  | PONTOPONTO
  | PONTOEVIRGULA
  | PONTO
  | OR
  | NOT
  | NIL
  | MULTIPLICACAO
  | MODULO
  | MENORIGUAL
  | MENOR
  | MAIORIGUAL
  | MAIOR
  | LOCAL
  | INT of (int)
  | IN
  | IGUALDADE
  | IF
  | ID of (string)
  | GOTO
  | FUNCTION
  | FOR
  | FLOAT of (float)
  | FECHAPARENTESE
  | FECHACOLCHETE
  | FECHACHAVES
  | FALSE
  | EXPONENCIACAO
  | EOF
  | END
  | ELSEIF
  | ELSE
  | DOISPONTOS
  | DOISDOISPONTOS
  | DO
  | DIVISAO
  | DIFERENTE
  | BREAK
  | ATRIBUICAO
  | AND
  | ABREPARENTESE
  | ABRECOLCHETE
  | ABRECHAVES

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val chunk: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)
