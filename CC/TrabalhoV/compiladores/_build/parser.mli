
(* The type of tokens. *)

type token = 
  | WHILE of (Lexing.position)
  | VIRGULA of (Lexing.position)
  | UNTIL of (Lexing.position)
  | TRUE of (Lexing.position)
  | TONUMBER of (Lexing.position)
  | THEN of (Lexing.position)
  | SUBTRACAO of (Lexing.position)
  | STRING of (string * Lexing.position)
  | SOMA of (Lexing.position)
  | RETURN of (Lexing.position)
  | REPEAT of (Lexing.position)
  | READ of (Lexing.position)
  | QUADRADO of (Lexing.position)
  | PRINT of (Lexing.position)
  | PONTOPONTOPONTO of (Lexing.position)
  | PONTOPONTO of (Lexing.position)
  | PONTOFLUTUANTE of (Lexing.position)
  | PONTOEVIRGULA of (Lexing.position)
  | PONTO of (Lexing.position)
  | OR of (Lexing.position)
  | NOT of (Lexing.position)
  | NIL of (Lexing.position)
  | MULTIPLICACAO of (Lexing.position)
  | MODULO of (Lexing.position)
  | MENORIGUAL of (Lexing.position)
  | MENOR of (Lexing.position)
  | MAIORIGUAL of (Lexing.position)
  | MAIOR of (Lexing.position)
  | LOCAL of (Lexing.position)
  | INTEIRO of (Lexing.position)
  | INT of (int * Lexing.position)
  | IN of (Lexing.position)
  | IGUALDADE of (Lexing.position)
  | IF of (Lexing.position)
  | ID of (string * Lexing.position)
  | GOTO of (Lexing.position)
  | FUNCTION of (Lexing.position)
  | FOR of (Lexing.position)
  | FLOAT of (float * Lexing.position)
  | FECHAPARENTESE of (Lexing.position)
  | FECHACOLCHETE of (Lexing.position)
  | FECHACHAVES of (Lexing.position)
  | FALSE of (Lexing.position)
  | EXPONENCIACAO of (Lexing.position)
  | EOF
  | END of (Lexing.position)
  | ELSEIF of (Lexing.position)
  | ELSE of (Lexing.position)
  | DOISPONTOS of (Lexing.position)
  | DOISDOISPONTOS of (Lexing.position)
  | DO of (Lexing.position)
  | DIVISAO of (Lexing.position)
  | DIFERENTE of (Lexing.position)
  | CHAR of (Lexing.position)
  | BREAK of (Lexing.position)
  | ATRIBUICAO of (Lexing.position)
  | AND of (Lexing.position)
  | ABREPARENTESE of (Lexing.position)
  | ABRECOLCHETE of (Lexing.position)
  | ABRECHAVES of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val program: Lexing.position -> (Ast.program) MenhirInterpreter.checkpoint
  
end
