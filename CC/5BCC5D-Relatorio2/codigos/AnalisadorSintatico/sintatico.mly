%{
open Ast
%}

%token <string> BIBLIOTECA
%token SOMA
%token SUB
%token MULT
%token DIV
%token MOD

%token ATRIB
%token SOMAATRIB
%token SUBATRIB
%token MULTATRIB
%token DIVATRIB
	
%token INCR
%token DECR

%token MAIOR
%token MENOR
%token MAIORIGUAL
%token MENORIGUAL
%token IGUAL
%token DIF	

%token NEG

%token E
%token OU

%token ABPAR
%token FCPAR
%token ABCHAVE
%token FCCHAVE

%token VIRG
%token PTVIRG

%token INT
%token CHAR
%token FLOAT
%token VOID

%token IF
%token ELSE
%token FOR
%token DO
%token WHILE

%token PUTS
%token GETS

%token RETURN

%token INCLUDE

%token <string> ID
%token <char> CARACTERE
%token <string> LITSTRING

%token <int> LITINT
%token <float> LITFLOAT         

%token EOF

%left OU
%left E 
%left IGUAL DIF
%left MAIOR MENOR MAIORIGUAL MENORIGUAL     
%left SOMA SUB
%left MULT DIV MOD

%right NEG

%start <Ast.programa> programa

%%  

programa: bs=biblioteca*
          c=corpo+
          EOF { Programa (bs, c) }

corpo: d=declaracao  { Global d }
     | f=funcao      { f }

declaracao: t=tipo ids=separated_nonempty_list(VIRG, ID) PTVIRG
            { List.map (fun id -> DecVar (t,id)) ids } 

funcao: t=tipo nome=ID ABPAR args=separated_list(VIRG, t1=tipo i=ID { DecVar (t1,i) }) FCPAR
        ABCHAVE
            locais=declaracao*
            cs=comando*
        FCCHAVE
        { Funcao {nome=nome; tiporet=t; args=args; locais=List.flatten locais; cmds=cs} }

biblioteca: INCLUDE b=BIBLIOTECA { Include b }

tipo: t=tipo_simples { t }    

tipo_simples: INT  	      { TipoInt }
            | FLOAT   	   { TipoFloat }
            | CHAR         { TipoChar }
           	| VOID		   { TipoVoid }
              
comando: c=comando_atribuicao PTVIRG { c }
       | c=comando_if                { c }
       | c=comando_while             { c }
       | c=comando_do_while PTVIRG   { c }
       | c=comando_for               { c }
       | c=comando_gets PTVIRG       { c }
       | c=comando_puts PTVIRG       { c }
       | c=comando_return PTVIRG     { c }
       | c=comando_id PTVIRG         { c }
       | c=comando_chamada PTVIRG     { c }

comando_chamada: nome=ID ABPAR ps=separated_list(VIRG, e=expressao { e }) FCPAR
                { ComandoChamada {func=nome; params=ps} }

comando_atrib: c=comando_id { c }
            |  c=comando_atribuicao { c }

comando_id: op=oper_un_id v=variavel
          | v=variavel op=oper_un_id
          { ComandoID (op, v) }

comando_atribuicao: v=variavel a=atribuicao e=expressao
                    { ComandoAtrib (a,v,e) }

atribuicao: ATRIB { Atrib } 
          | SOMAATRIB { SomaAtrib }
          | SUBATRIB { SubAtrib }
          | MULTATRIB { MultAtrib } 
          | DIVATRIB { DivAtrib}

comando_if: IF ABPAR teste=expressao FCPAR 
				ABCHAVE
               entao=comando+
            FCCHAVE
					senao=option(ELSE ABCHAVE cs=comando+ FCCHAVE {cs})
            { ComandoIf (teste, entao, senao) }

comando_while: WHILE ABPAR e=expressao FCPAR
               ABCHAVE
                  c=comando+
               FCCHAVE
               { ComandoWhile (e, c) }                 

comando_do_while: DO
                  ABCHAVE
                     c=comando+
                  FCCHAVE WHILE ABPAR e=expressao FCPAR
                  { ComandoDoWhile (e, c) }

comando_for: FOR ABPAR i=comando_atribuicao PTVIRG e=expressao PTVIRG a=comando_atrib FCPAR
             ABCHAVE
                c=comando+
             FCCHAVE
             { ComandoFor (i, e, a, c) }

comando_gets: GETS ABPAR v=variavel FCPAR
				  { ComandoGets v }

comando_puts: PUTS ABPAR v=variavel FCPAR
				  { ComandoPuts v }

comando_return: RETURN e=expressao
                { ComandoReturn e }

expressao: v=variavel 								      { ExpressaoVar v }
         | i=LITINT                                { ExpressaoInt i }
         | f=LITFLOAT      					         { ExpressaoFloat f }
         | c=CARACTERE                             { ExpressaoChar c }
         | s=LITSTRING                             { ExpressaoString s }
         | cc=comando_chamada                      { ExpressaoChamada cc }
			| e1=expressao op=oper_bin e2=expressao   { ExpressaoOpBin (op, e1, e2) }
 	 		| ABPAR e=expressao FCPAR 				      { e }
         | op=oper_un e=expressao                  { ExpressaoOpUn (op, e) }         

%inline oper_un: NEG { Negacao }

%inline oper_un_id: INCR { Incremento }
                 | DECR { Decremento }

%inline oper_bin:	
		  | SOMA  	{ Soma }
        | SUB 		{ Sub }
        | MULT  	{ Mult }
        | DIV  	{ Div }
        | MOD     { Mod }
        | MAIOR 	{ Maior }
        | MENOR 	{ Menor }
        | IGUAL 	{ Igual }
        | DIF   	{ Dif }
        | MAIORIGUAL { MaiorIgual }
        | MENORIGUAL { MenorIgual }
        | E   		{ ELog }
        | OU 		{ OuLog }

variavel: x=ID    { VarSimples x }
