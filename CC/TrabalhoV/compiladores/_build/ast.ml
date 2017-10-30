(* The type of the abstract syntax tree (AST). *)

open Lexing

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type expr =
  | Var of string
  | Int of int
  | Add of expr*expr
  | Let of string*expr*expr

and program = Program of block

and block = Block of stat list * retstat option

and tipo =
  | Inteiro
  | PontoFlutuante
  | Char


and stat = Pontoevirgula
  | Atribuicao of varlist * explist
  | Functioncall of functioncall
  | Label of label
  | Break
  | Goto of string pos
  | Do of block 
  | While of exp * block
  | Repeat of block * exp 
  | If of exp * block * elseif_rule list * else_block_rule option 
  | For1 of string pos* exp * exp * comma_exp_rule option * block
  | For2 of namelist * explist * block 
  | Function of funcname * funcbody
  | Local of namelist * atribuicao_explist_rule option
  | Print of args
  | Read

  
and elseif_rule = Elseif of exp * block

and else_block_rule = Else of block

and comma_exp_rule = Virgula of exp
  
and atribuicao_explist_rule = Atribuicao of explist

and retstat = Retstat of explist option 

and label = Label of string pos

and funcname = Funcname of string pos * ponto_id_rule list * doispontos_id_rule option

and ponto_id_rule = Ponto of string pos

and doispontos_id_rule = Doispontos of string pos

and varlist = Varlist of var * virgula_var_rule list

and virgula_var_rule = VirgulaVarRule of var 

and var = Id of string pos
  | Varcol of prefixexp * exp 
  | Varponto of prefixexp * string pos

and namelist = Namelist of string pos* virgula_id_rule list

and virgula_id_rule = Virgulaid of string pos

and explist = ExpList of exp * virgula_exp_rule list 

and virgula_exp_rule = VirgulaExp of exp

and exp = Nil
  | Falso
  | Verdadeiro
  | Int of int pos
  | Float of float pos
  | String of string pos
  | PontoPonto 
  | FunctionDef
  | Prefixexp of prefixexp
  | TableConstructor of tableconstructor
  | ExpressaoBinaria of exp * binop pos* exp
  | ExpressaoUnaria of unop pos*exp
  | Tonumber of read 

and read =  Read

and prefixexp = Var of var
  | Functioncall of functioncall
  | ExpressaoParentese of exp

and functioncall = PrefixexpArgs of prefixexp * args
  | PrefixoDoisPontosIdArgs of prefixexp *string pos*args 
  
and args = ArgsParentese of explist option
  | TableConstructor of tableconstructor
  | String of string pos

and functiondef = FuncDef of funcbody

and funcbody = Funcbody of parfunc option * block

and parlist = NameListVirgula of namelist * virgula_tres_pontos_rule option
  | PontoPontoPonto
  
and virgula_tres_pontos_rule = VirgulaPPP

and tableconstructor = FieldList of fieldlist option

and fieldlist = FieldLists of field * fieldsep_field_rule list * fieldsep option

and fieldsep_field_rule = FieldSepField of fieldsep*field
  
and field = Campo1 of exp*exp
  | Campo2 of string pos* exp
  | Campo3 of exp

and fieldsep = Virgula 
  | PontoEVirgula

and binop = Soma
  | Subtracao
  | Multiplicacao
  | Divisao
  | Exponenciacao
  | Modulo
  | PontoPonto
  | Menor
  | MenorIgual
  | Maior
  | MaiorIgual
  | Igualdade
  | Diferente
  | And
  | Or

and unop = Subtracao
  | Not
  | Quadrado

and parfunc = ListaNome of listanome

and listanome = (string pos* tipo) * virgula_id_regra list

and virgula_id_regra = string pos* tipo

