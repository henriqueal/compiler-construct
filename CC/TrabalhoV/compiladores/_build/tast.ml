open Ast

type expressao = 
      |ExpVar of (var) * tipo
		  |ExpInt of int pos * tipo
		  |ExpFloat of float pos * tipo
      |ExpString of string pos * tipo
		  |ExpOp of  (expressao*tipo) * (binop pos *tipo) * (expressao * tipo)
		  |ExpFunCall of ident pos * (args) * tipo



