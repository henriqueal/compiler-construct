(* The type of the abstract syntax tree (AST). *)

open Lexing

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

and 'expr program = Program of ('expr block)
and 'expr expressoes = 'expr list

and 'expr block = Block of ('expr stat) list * ('expr retstat) option

and tipo =
  | Inteiro
  | PontoFlutuante
  | Char
  | Booleano


and 'expr stat = Pontoevirgula
  | Atribuicao of ('expr varlist) * ('expr explist)
  | Functioncall of ('expr functioncall)
  | Label of label
  | Break
  | Goto of string pos
  | Do of ('expr block)
  | While of ('expr exp) * ('expr block)
  | Repeat of ('expr block) * ('expr exp)
  | If of ('expr exp) * ('expr block) * ('expr elseif_rule) list * ('expr else_block_rule) option
  | For1 of string pos* ('expr exp) * ('expr exp) * ('expr comma_exp_rule) option * ('expr block)
  | For2 of namelist * ('expr explist) * ('expr block)
  | Function of funcname * ('expr funcbody)
  | Local of namelist * ('expr atribuicao_explist_rule) option
  | Print of ('expr args)
  | Read


and 'expr elseif_rule = Elseif of ('expr exp) * ('expr block)

and 'expr else_block_rule = Else of ('expr block)

and 'expr comma_exp_rule = Virgula of ('expr exp)

and 'expr atribuicao_explist_rule = Atribuicao of ('expr explist)

and 'expr retstat = Retstat of ('expr explist) option

and label = Label of string pos

and funcname = Funcname of string pos * ponto_id_rule list * doispontos_id_rule option

and ponto_id_rule = Ponto of string pos

and doispontos_id_rule = Doispontos of string pos

and 'expr varlist = Varlist of ('expr var) * ('expr virgula_var_rule) list

and 'expr virgula_var_rule = VirgulaVarRule of ('expr var)

and 'expr var =
  | Id of string pos
  | Varcol of ('expr prefixexp) * ('expr exp)
  | Varponto of ('expr prefixexp) * string pos

and namelist = Namelist of string pos* virgula_id_rule list

and virgula_id_rule = Virgulaid of string pos

and 'expr explist = ExpList of ('expr exp) * ('expr virgula_exp_rule) list

and 'expr virgula_exp_rule = VirgulaExp of ('expr exp)

and 'expr exp = Nil
  | Int of int pos
  | Float of float pos
  | String of string pos
  | ExpBool of valor_logico pos
  | PontoPonto
  | FunctionDef
  | Prefixexp of ('expr prefixexp)
  | TableConstructor of ('expr tableconstructor)
  | ExpressaoBinaria of ('expr exp) * binop pos* ('expr exp)
  | ExpressaoUnaria of unop pos*('expr exp)
  | Tonumber of read

and read =  Read

and 'expr prefixexp = Var of ('expr var)
  | Functioncall of ('expr functioncall)
  | ExpressaoParentese of ('expr exp)

and 'expr functioncall = PrefixexpArgs of ('expr prefixexp) * ('expr args)
  | PrefixoDoisPontosIdArgs of ('expr prefixexp) *string pos* ('expr args)

and 'expr args = ArgsParentese of ('expr explist) option
  | TableConstructor of ('expr tableconstructor)
  | String of string pos

and 'expr functiondef = FuncDef of ('expr funcbody)

and 'expr funcbody = Funcbody of parfunc option * ('expr block)

and parlist = NameListVirgula of namelist * virgula_tres_pontos_rule option
  | PontoPontoPonto

and virgula_tres_pontos_rule = VirgulaPPP

and 'expr tableconstructor = FieldList of ('expr fieldlist) option

and 'expr fieldlist = FieldLists of ('expr field) * ('expr fieldsep_field_rule) list * fieldsep option

and 'expr fieldsep_field_rule = FieldSepField of fieldsep*('expr field)

and 'expr field = Campo1 of ('expr exp)*('expr exp)
  | Campo2 of string pos* ('expr exp)
  | Campo3 of ('expr exp)

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

and valor_logico = bool
