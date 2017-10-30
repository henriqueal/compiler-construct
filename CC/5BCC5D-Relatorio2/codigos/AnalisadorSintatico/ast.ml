(* The type of the abstract syntax tree (AST). *)
type ident = string

type programa = Programa of bibliotecas * corpo list

and corpo = Global of declaracoes
          | Funcao of registrofunc

and biblioteca = Include of string
and declaracao = DecVar of tipo * ident                                     

and bibliotecas = biblioteca list
and declaracoes = declaracao list
and comandos = comando list
and idents = ident list
and expressoes = expressao list

and registrofunc = { nome: ident;
                    tiporet: tipo;
                    args: declaracoes;
                    locais: declaracoes;
                    cmds: comandos }

and chamadafunc = { func: ident;
                   params: expressoes
                 }

and tipo = TipoInt
			| TipoFloat
			| TipoChar
			| TipoVoid

and comando = ComandoAtrib of atribuicao * variavel * expressao
            | ComandoIf of expressao * comandos * (comandos option)
            | ComandoWhile of expressao * comandos
            | ComandoDoWhile of expressao * comandos
            | ComandoFor of comando * expressao * comando * comandos 
            | ComandoGets of variavel
            | ComandoPuts of variavel
            | ComandoReturn of expressao
            | ComandoID of oper_un_id * variavel
            | ComandoChamada of chamadafunc

and atribuicao = Atrib
               | SomaAtrib
               | SubAtrib
               | DivAtrib
               | MultAtrib

and variaveis = variavel list
and variavel = VarSimples of ident
            
and expressao = ExpressaoVar of variavel
              | ExpressaoInt of int
              | ExpressaoFloat of float
              | ExpressaoChar of char
              | ExpressaoString of string
              | ExpressaoOpBin of oper_bin * expressao * expressao
              | ExpressaoOpUn of oper_un * expressao
              | ExpressaoChamada of comando

and oper_un = Negacao

and oper_un_id = Incremento
              | Decremento

and oper_bin = Soma
         | Sub
         | Mult
         | Div
         | Mod
         | Maior
         | Menor
         | Igual
         | Dif
         | MaiorIgual
         | MenorIgual
         | ELog
         | OuLog
