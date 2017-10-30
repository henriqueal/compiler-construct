exception Error

type token = 
  | WRITE
  | WHILE
  | VIRGULA
  | UNTIL
  | TRUE
  | THEN
  | SUBTRACAO
  | RETURN
  | REPEAT
  | PONTOTRIPLO
  | PONTOEVIRGULA
  | PONTODUPLO
  | PONTO
  | OR
  | NOT
  | NIL
  | NAOEQUIVALENTE
  | MULTIPLICACAO
  | MODULO
  | MENOROUIGUAL
  | MENOR
  | MAIOROUIGUAL
  | MAIOR
  | LOCAL
  | INT of (int)
  | IN
  | IGUAL
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
  | EQUIVALENTE
  | EOF
  | END
  | ELSEIF
  | ELSE
  | DOISPOTNOS
  | DOISPONTOSDUPLO
  | DO
  | DIVISAO
  | COMPRIMENTO
  | BREAK
  | ASPASSIMPLES
  | AND
  | ADICAO
  | ABREPARENTESE
  | ABRECOLCHETE
  | ABRECHAVES


val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)