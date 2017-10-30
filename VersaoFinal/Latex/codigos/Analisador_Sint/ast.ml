(* The type of the abstract syntax tree (AST). *)

type identificador = string

type programa = Programa of block
and block = stat list * retstat option

and stat = Atribuicao of varlist * explist
					|Atribuicao2 of varlist * read        
					|Funccall of functioncall
					|Do of block
					|While of exp * block
					|Repeat of block * exp
					|If of exp * tokens * block * elseif_rule list * else_block_rule option
					|For1 of identificador * exp * exp * comma_exp_rule option * block
					|For2 of name_list * explist * block
					|Function of funcname * funcbody
					|Local of namelist
					|Write of args
					|Pontovirg

			
and retstat = Return of explist option
and varlist = var * virgula_var_rule list

and var = Var_i of identificador
				 |Var_exp of prefixexp * exp
				 |Var_id of prefixexp * identificador

and prefixexp = Var of var
							 |Funcao of functioncall
							 |Exp of exp

and functioncall = ChamadaFunc1 of prefixexp * args
									|ChamadaFunc2 of prefixexp * identificador * args

and args = ArgParent of explist option
          |TabelaConst of constTabela
					|String of string 

and virgula_var_rule = var
and explist = exp * virgula_exp_rule list
and virgula_exp_rule = exp

and elseif_rule = Elif of exp * tokens * block
and else_block_rule = Else of block

and comma_exp_rule = exp
and namelist = identificador * atribuicao_explist_regra option * virgula_id_rule list
and virgula_id_rule = identificador * atribuicao_explist_regra option

and name_list = identificador * virgul_a_id_rule list
and virgul_a_id_rule = identificador

and funcname = NomeFunc of identificador * ponto_id_rule list * doispontos_id_rule option
and ponto_id_rule = Ponto of identificador
and doispontos_id_rule = DoisPontos of identificador

and funcbody =CorpoFunc of parlist option * block
and parlist = ListaParam of listanome 
and listanome = (identificador * tokens) * virgula_id_regra list
and virgula_id_regra = identificador * tokens

and atribuicao_explist_rule = Recebe of explist
and atribuicao_explist_regra = exp

and exp = Nil
         |False
         |True
         |Int of int
         |Float of float
         |String of string 
         |Tabela of constTabela
         |Funcdef of functiondef
         |Prefix of prefixexp
				 |Expressao of exp * tokens * exp
         |ExpressaoUn of tokens * exp
  			 |Tonumber of read

and constTabela = listacampos option

and listacampos = campo * fieldsep_field_rule list * sepcampos option

and campo = AtribExp of exp * exp
           |AtribId of identificador * exp
           |Exp_campo of exp

and fieldsep_field_rule = sepcampos * campo 
and sepcampos = tokens

and read =  Read
         
and functiondef = Functiondef
				
and tokens = And
					  | Not
					  | Or
					  | Mais
					  | Menos
					  | Maior
					  | Menor
					  | Div
					  | Mult
					  | Mod
					  | MaiorIgual
			 		  | MenorIgual
					  | Igual
					  | Diferente
						| PontoVirgula
       			| Entao
            | Inteiro
            | PFlut
            | Char
            | Virgula




