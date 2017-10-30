%{
  open Ast
%}

%token ABREPARENTESE
%token FECHAPARENTESE
%token ABRECOLCHETE
%token FECHACOLCHETE
%token ABRECHAVES
%token FECHACHAVES
%token DOISPONTOS
%token DOISDOISPONTOS

%token PONTOEVIRGULA
%token VIRGULA
%token QUADRADO

%token PONTO
%token PONTOPONTO
%token PONTOPONTOPONTO

%token ATRIBUICAO
%token SOMA
%token SUBTRACAO
%token MULTIPLICACAO
%token DIVISAO
%token MODULO
%token EXPONENCIACAO
%token IGUALDADE
%token DIFERENTE
%token MENORIGUAL
%token MAIORIGUAL
%token MENOR
%token MAIOR

%token AND
%token BREAK
%token DO
%token ELSE
%token ELSEIF
%token END
%token FALSE
%token FOR
%token FUNCTION
%token GOTO
%token IF
%token IN
%token LOCAL
%token NIL
%token NOT
%token OR
%token REPEAT
%token RETURN
%token THEN
%token TRUE
%token UNTIL
%token WHILE

%token <int> INT
%token <string> STRING
%token <string> ID
%token <float> FLOAT
%token EOF

%left SOMA SUBTRACAO MULTIPLICACAO DIVISAO MODULO
%left MAIOR MENOR MAIORIGUAL MENORIGUAL IGUALDADE DIFERENTE
%left OR AND ATRIBUICAO
%right EXPONENCIACAO
%nonassoc IN

%start <Ast.chunk> chunk

%%

chunk:
  | b=block EOF { Chunk(b) }
  ;

block:
  | s=stat* r=retstat? { Block(s,r)}
  ;

stat:
  | PONTOEVIRGULA { Pontoevirgula }
  | v=varlist ATRIBUICAO e=explist { Atribuicao(v,e) }
  | functioncall { Functioncall }
  | label { Label }
  | BREAK { Break }
  | GOTO i=ID { Goto(i) }
  | DO b=block END { Do(b) }
  | WHILE e=exp DO b=block END { While(e,b)}
  | REPEAT b=block UNTIL e=exp { Repeat(b,e)}
  | IF e=exp THEN b=block elif=elseif_rule* elbl=else_block_rule? END { If(e,b,elif, elbl) }
  | FOR i=ID ATRIBUICAO e=exp VIRGULA ec=exp c=comma_exp_rule? DO b=block END { For1(i, e, ec, c, b)}
  | FOR n=namelist IN e=explist DO b=block END { For2(n, e, b) }
  | FUNCTION fn=funcname fb=funcbody { Function(fn, fb) }
  | LOCAL n=namelist a=atribuicao_explist_rule? { Local(n,a) }
  ;

(* AUXILIARES PARA A REGRA STAT *)
elseif_rule:
  | ELSEIF e=exp THEN b=block { Elseif(e,b) }
  ;

else_block_rule:
  | ELSE b=block { Else(b) }
  ;

comma_exp_rule:
  | VIRGULA e=exp { Virgula(e) }
  ;
atribuicao_explist_rule:
  | ATRIBUICAO e=explist { Atribuicao(e)}
  ;
  (* --------------------------- *)

retstat:
  | RETURN e=explist? PONTOEVIRGULA? { Retstat(e) }
  ;

label:
  | DOISDOISPONTOS i=ID DOISDOISPONTOS { Label(i)}
  ;

funcname:
  | i=ID p=ponto_id_rule* d=doispontos_id_rule? { Funcname(i, p, d) }
  ;

  (* auxiliares para funcname *)

ponto_id_rule:
  | PONTO i=ID { Ponto(i) }
  ;

doispontos_id_rule:
  | DOISPONTOS i=ID { Doispontos(i) }
  ;
  (* --------------------------- *)

varlist:
  | v=var vir=virgula_var_rule* { Varlist(v,vir) }
  ;
  (* auxiliares var list *)
virgula_var_rule:
  | VIRGULA v=var { VirgulaVarRule(v) }
  ;
  (* --------------------------- *)

var:
  | i=ID { Id(i) }
  | p=prefixexp ABRECOLCHETE e=exp FECHACOLCHETE { Varcol(p,e) }
  | p=prefixexp PONTO i=ID { Varponto(p,i) }
  ;

namelist:
  | i=ID v=virgula_id_rule* { Namelist(i,v) }
  ;

  (* namelist auxiliares *)
virgula_id_rule:
  | VIRGULA i=ID { Virgulaid(i) }
  ;
  (* --------------------------- *)

explist:
  | e=exp v=virgula_exp_rule* { ExpList(e,v)}
  ;
  (* auxiliar para explist *)
virgula_exp_rule:
  | VIRGULA e=exp { VirgulaExp(e) }
  ;
  (* --------------------------- *)

exp:
  | NIL { Nil }
  | FALSE { Falso}
  | TRUE { Verdadeiro }
  | INT { Int }
  | FLOAT { Float }
  | STRING { String}
  | PONTOPONTOPONTO { PontoPonto }
  | functiondef { FunctionDef }
  | prefixexp { Prefixexp }
  | tableconstructor { TableConstructor }
  | e=exp b=binop e2=exp { ExpressaoBinaria(e, b, e2) }
  | u=unop e=exp { ExpressaoUnaria(u,e)}
  ;

prefixexp:
  | var { Var }
  | functioncall { Functioncall }
  | ABREPARENTESE e=exp FECHAPARENTESE { ExpressaoParentese(e) }
  ;

functioncall:
  | p=prefixexp a=args { PrefixexpArgs(p,a) }
  | p=prefixexp DOISPONTOS i=ID a=args { PrefixoDoisPontosIdArgs(p, i, a) }
  ;

args:
  | ABREPARENTESE e=explist? FECHAPARENTESE { ArgsParentese(e)}
  | tableconstructor { TableConstructor }
  | STRING { String }
  ;

functiondef:
  | FUNCTION f=funcbody { Funcbody(f) }
  ;

funcbody:
  | ABREPARENTESE p=parlist? FECHAPARENTESE b=block END { ParlistBlock(p,b) }
  ;

parlist:
  | n=namelist v=virgula_tres_pontos_rule? { NameListVirgula(n,v) }
  | PONTOPONTOPONTO { PontoPontoPonto}
  ;
  (* parlist auxiliar *)
virgula_tres_pontos_rule:
  | VIRGULA PONTOPONTOPONTO {  VirgulaPPP }
  ;
  (* --------------------------- *)

tableconstructor:
  | ABRECHAVES f=fieldlist? FECHACHAVES { FieldList(f) }
  ;

fieldlist:
  | f=field ffr=fieldsep_field_rule* fs=fieldsep? { FieldLists(f, ffr, fs)}
  ;
  (* auxiliar fieldlist *)
fieldsep_field_rule:
  | fs=fieldsep f=field { FieldSepField(fs,f)}
  ;
  (* --------------------------- *)

field:
  | ABRECOLCHETE e1=exp FECHACOLCHETE ATRIBUICAO e2=exp { Campo1(e1,e2)}
  | i=ID ATRIBUICAO e=exp { Campo2(i,e) }
  | e=exp { Campo3(e) }
  ;

fieldsep:
  | VIRGULA { Virgula }
  | PONTOEVIRGULA { PontoEVirgula }
  ;

binop:
  | SOMA { Soma }
  | SUBTRACAO { Subtracao }
  | MULTIPLICACAO { Multiplicacao }
  | DIVISAO { Divisao }
  | EXPONENCIACAO { Exponenciacao }
  | MODULO { Modulo }
  | PONTOPONTO { PontoPonto}
  | MENOR { Menor}
  | MENORIGUAL { MenorIgual }
  | MAIOR { Maior}
  | MAIORIGUAL { MaiorIgual}
  | IGUALDADE { Igualdade}
  | DIFERENTE { Diferente}
  | AND { And}
  | OR { Or}
  ;

unop:
  | SUBTRACAO { Subtracao}
  | NOT { Not}
  | QUADRADO { Quadrado}
  ;
