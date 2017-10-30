open Ast

type expressao =
  | ExpVar of (expressao var)
  | ExpInt of int pos
  | ExpString of string pos
  | ExpBool of bool pos
  | ExpOp of oper pos * expressao * expressao
  | ExpChamada of ident pos * (expressao expressoes)
