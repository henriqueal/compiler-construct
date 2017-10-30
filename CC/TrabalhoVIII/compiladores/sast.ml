open Ast

type expressao =
      |ExpVar of (expressao var)
		  |ExpInt of int pos
		  |ExpFloat of float pos
      |ExpString of string pos
		  |ExpOp of  expressao * binop pos * expressao
		  |ExpFunCall of ident pos * (expressao expressoes)
      |ExpBool of bool pos
