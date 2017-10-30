(* The type of the abstract syntax tree (AST). *)
type expr =
  | Var of string
  | Int of int
  | Add of expr*expr
  | Let of string*expr*expr

and chunk = Chunk of block

and block = Block of stat list * retstat option

(*
and retstat_option = retstat option
and retstat =
  | Retstat of string
*)

and stat = Pontoevirgula
  | Atribuicao of varlist * explist
  | Functioncall
  | Label
  | Break
  | Goto of string (* gambiarra do leozin*)
  | Do of block 
  | While of exp * block
  | Repeat of block * exp 
  | If of exp * block * elseif_rule list * else_block_rule option (*qqr coisa fazer q nem o do guilherme*)
  | For1 of string * exp * exp * comma_exp_rule option * block
  | For2 of namelist * explist * block 
  | Function of funcname * funcbody
  | Local of namelist * atribuicao_explist_rule option

  
and elseif_rule = Elseif of exp * block

and else_block_rule = Else of block

and comma_exp_rule = Virgula of exp
  
and atribuicao_explist_rule = Atribuicao of explist

and retstat = Retstat of explist option 

and label = Label of string

and funcname = Funcname of string * ponto_id_rule list * doispontos_id_rule option

and ponto_id_rule = Ponto of string

and doispontos_id_rule = Doispontos of string

and varlist = Varlist of var * virgula_var_rule list

and virgula_var_rule = VirgulaVarRule of var 

and var = Id of string
  | Varcol of prefixexp * exp 
  | Varponto of prefixexp * string

and namelist = Namelist of string * virgula_id_rule list

and virgula_id_rule = Virgulaid of string

and explist = ExpList of exp * virgula_exp_rule list 

and virgula_exp_rule = VirgulaExp of exp

and exp = Nil
  | Falso
  | Verdadeiro 
  | Int 
  | Float 
  | String
  | PontoPonto 
  | FunctionDef
  | Prefixexp
  | TableConstructor
  | ExpressaoBinaria of exp * binop * exp
  | ExpressaoUnaria of unop *exp

and prefixexp = Var
  | Functioncall
  | ExpressaoParentese of exp

and functioncall = PrefixexpArgs of prefixexp * args
  | PrefixoDoisPontosIdArgs of prefixexp *string *args 
  
and args = ArgsParentese of explist option
  | TableConstructor
  | String

and functiondef = Funcbody of funcbody

and funcbody = ParlistBlock of parlist option * block

and parlist = NameListVirgula of namelist * virgula_tres_pontos_rule option
  | PontoPontoPonto
  
and virgula_tres_pontos_rule = VirgulaPPP

and tableconstructor = FieldList of fieldlist option

and fieldlist = FieldLists of field * fieldsep_field_rule list * fieldsep option

and fieldsep_field_rule = FieldSepField of fieldsep*field
  
and field = Campo1 of exp*exp
  | Campo2 of string * exp
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
