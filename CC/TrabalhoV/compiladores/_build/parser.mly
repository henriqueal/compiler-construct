%{
  open Lexing
  open Ast
  open Sast
%}

%token <Lexing.position> ABREPARENTESE
%token <Lexing.position> FECHAPARENTESE
%token <Lexing.position> ABRECOLCHETE
%token <Lexing.position> FECHACOLCHETE
%token <Lexing.position> ABRECHAVES
%token <Lexing.position> FECHACHAVES
%token <Lexing.position> DOISPONTOS
%token <Lexing.position> DOISDOISPONTOS

%token <Lexing.position> PONTOEVIRGULA
%token <Lexing.position> VIRGULA
%token <Lexing.position> QUADRADO

%token <Lexing.position> PONTO
%token <Lexing.position> PONTOPONTO
%token <Lexing.position> PONTOPONTOPONTO

%token <Lexing.position> ATRIBUICAO
%token <Lexing.position> SOMA
%token <Lexing.position> SUBTRACAO
%token <Lexing.position> MULTIPLICACAO
%token <Lexing.position> DIVISAO
%token <Lexing.position> MODULO
%token <Lexing.position> EXPONENCIACAO
%token <Lexing.position> IGUALDADE
%token <Lexing.position> DIFERENTE
%token <Lexing.position> MENORIGUAL
%token <Lexing.position> MAIORIGUAL
%token <Lexing.position> MENOR
%token <Lexing.position> MAIOR

%token <Lexing.position> AND
%token <Lexing.position> BREAK
%token <Lexing.position> DO
%token <Lexing.position> ELSE
%token <Lexing.position> ELSEIF
%token <Lexing.position> END
%token <Lexing.position> FALSE
%token <Lexing.position> FOR
%token <Lexing.position> FUNCTION
%token <Lexing.position> GOTO
%token <Lexing.position> IF
%token <Lexing.position> IN
%token <Lexing.position> LOCAL
%token <Lexing.position> NIL
%token <Lexing.position> NOT
%token <Lexing.position> OR
%token <Lexing.position> REPEAT
%token <Lexing.position> RETURN
%token <Lexing.position> THEN
%token <Lexing.position> TRUE
%token <Lexing.position> UNTIL
%token <Lexing.position> WHILE
%token <Lexing.position> PRINT
%token <Lexing.position> READ
%token <Lexing.position> TONUMBER

%token <Lexing.position> INTEIRO
%token <Lexing.position> CHAR
%token <Lexing.position> PONTOFLUTUANTE

%token <int * Lexing.position>  INT
%token <string * Lexing.position> STRING
%token <string * Lexing.position> ID
%token <float * Lexing.position>  FLOAT
%token EOF


%left OR
%left AND
%left MAIOR MENOR MAIORIGUAL MENORIGUAL IGUALDADE DIFERENTE
%left SOMA SUBTRACAO
%left MULTIPLICACAO DIVISAO MODULO
%left NOT
%right EXPONENCIACAO
%nonassoc IN

%start <Ast.program> program

%%

program:
  | b=block EOF { Program(b) }
  ;

block:
  | s=stat* r=retstat? { Block(s,r)}
  ;

stat:
  | PONTOEVIRGULA { Pontoevirgula }
  | v=varlist ATRIBUICAO e=explist { Atribuicao(v,e) }
  | f=functioncall { Functioncall(f) }
  | l=label { Label(l) }
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
  | PRINT a=args { Print(a) }
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
  | i=INT { Int(i) }
  | i=FLOAT { Float(i) }
  | i=STRING { String(i)}
  | PONTOPONTOPONTO { PontoPonto }
  | functiondef { FunctionDef }
  | p=prefixexp { Prefixexp(p) }
  | t=tableconstructor { TableConstructor(t) }
  | e=exp b=binop e2=exp { ExpressaoBinaria(e, b, e2) }
  | u=unop e=exp { ExpressaoUnaria(u,e)}
  | TONUMBER ABREPARENTESE r=read FECHAPARENTESE {Tonumber(r)}
  ;

read:
  | READ ABREPARENTESE FECHAPARENTESE{ Read }
  ;

prefixexp:
  | v=var { Var(v) }
  | f=functioncall { Functioncall(f) }
  | ABREPARENTESE e=exp FECHAPARENTESE { ExpressaoParentese(e) }
  ;

functioncall:
  | p=prefixexp a=args { PrefixexpArgs(p,a) }
  | p=prefixexp DOISPONTOS i=ID a=args { PrefixoDoisPontosIdArgs(p, i, a) }
  ;

args:
  | ABREPARENTESE e=explist? FECHAPARENTESE { ArgsParentese(e)}
  | t=tableconstructor { TableConstructor(t) }
  | s=STRING { String(s) }
  ;

functiondef:
  | FUNCTION f=funcbody { FuncDef(f) }
  ;

funcbody:
  | ABREPARENTESE p=parfunc? FECHAPARENTESE b=block END { Funcbody(p,b) }
  ;

parlist:
  | n=namelist v=virgula_tres_pontos_rule? { NameListVirgula(n,v) }
  | PONTOPONTOPONTO { PontoPontoPonto}
  ;

parfunc:
  | nl = listanome {ListaNome(nl)}
  ;
  
listanome:
  | id=ID DOISPONTOS INTEIRO vir=virgula_id_regra* {((id,Inteiro),vir)}
  | id=ID DOISPONTOS PONTOFLUTUANTE vir=virgula_id_regra* {((id,PontoFlutuante),vir)}
  | id=ID DOISPONTOS CHAR vir=virgula_id_regra* {((id,Char),vir)}
  ;

virgula_id_regra:
  | VIRGULA id=ID DOISPONTOS INTEIRO {(id, Inteiro) }
  | VIRGULA id=ID DOISPONTOS PONTOFLUTUANTE {(id, PontoFlutuante) }
  | VIRGULA id=ID DOISPONTOS CHAR {(id, Char) }
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
  | pos = SOMA { (Soma, pos) }
  | pos = SUBTRACAO { (Subtracao, pos) }
  | pos = MULTIPLICACAO { (Multiplicacao, pos) }
  | pos = DIVISAO { (Divisao, pos) }
  | pos = EXPONENCIACAO { (Exponenciacao, pos) }
  | pos = MODULO { (Modulo, pos) }
  | pos = PONTOPONTO { (PontoPonto, pos)}
  | pos = MENOR { (Menor, pos)}
  | pos = MENORIGUAL { (MenorIgual, pos) }
  | pos = MAIOR { (Maior, pos)}
  | pos = MAIORIGUAL { (MaiorIgual, pos)}
  | pos = IGUALDADE { (Igualdade, pos)}
  | pos = DIFERENTE { (Diferente, pos)}
  | pos = AND { (And, pos)}
  | pos = OR { (Or, pos)}
  ;

unop:
  | pos = SUBTRACAO { (Subtracao, pos) }
  | pos = NOT { (Not, pos)}
  | pos = QUADRADO { (Quadrado, pos)}
  ;
