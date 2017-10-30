%{
	open Ast
%}

%token <int> INT
%token <string> ID
%token <string> STRING
%token <float> FLOAT

%token INTEIRO
%token CHAR
%token PFLUT

%token AND
(*%token BREAK*)
%token DO
%token ELSE
%token ELSEIF
%token END
%token FALSE
%token FOR
%token FUNCTION
%token IF
%token IN
%token LOCAL
%token NIL
%token NOT
%token OR
%token READ
%token REPEAT
%token RETURN
%token THEN
%token TONUMBER
%token TRUE
%token UNTIL
%token WHILE
%token WRITE
%token ATRIB
%token MAIS
%token MENOS
%token MAIOR
%token MENOR
%token DIV
%token MULT
%token MOD
%token MAIORIGUAL
%token MENORIGUAL
%token IGUAL
%token DIFERENTE
%token APARENT
%token FPARENT
%token ACHAVES
%token FCHAVES
%token ACOLCHETE
%token FCOLCHETE
%token VIRGULA
%token PONTOVIRG
%token PONTO
(*%token PONTOPONTO *)
%token DOISPONTOS
%token EOF

%left OR
%left AND 
%left IGUAL DIFERENTE MAIOR MENOR MAIORIGUAL MENORIGUAL      
%left MAIS MENOS
%left MULT DIV MOD
%left NOT

%start <Ast.programa> programa

%%

programa:
  | bl=block EOF { Programa (bl) }
  ;

block:
  | st=stat* rt=retstat? {(st, rt)}
  ;

stat:
  | PONTOVIRG {Pontovirg }
  | vrl=varlist ATRIB exl=explist {Atribuicao (vrl, exl)} 
  | vrl=varlist ATRIB r=read { Atribuicao2 (vrl,r)}  
  | fctc=functioncall {Funccall (fctc) }
  | DO bl=block END {Do (bl) }
  | WHILE e=exp DO bl=block END {While (e,bl) }
  | REPEAT bl=block UNTIL e=exp {Repeat (bl,e) }
  | IF e=exp THEN bl=block elif=elseif_rule* el=else_block_rule? END {If (e,Entao,bl,elif,el) }
  | FOR id=ID ATRIB e1=exp VIRGULA e2=exp cer=comma_exp_rule? DO bl=block END {For1 (id,e1,e2,cer,bl)}
  | FOR nl=name_list IN expl=explist DO bl=block END {For2 (nl,expl,bl) }
  | FUNCTION fn=funcname fb=funcbody {Function (fn,fb) }
  | LOCAL nl=namelist { Local (nl)}
  | WRITE a=args {Write (a)}
  ;

elseif_rule:
  | ELSEIF e=exp THEN bl=block {Elif (e,Entao,bl) }
  ;

else_block_rule:
  | ELSE bl=block {Else (bl) }
  ;

comma_exp_rule:
  | VIRGULA e=exp {(e) }
  ;
atribuicao_explist_rule:
  | ATRIB el=explist {Recebe (el) }
  ;

atribuicao_explist_regra:
  | ATRIB e=exp {(e) }
  ;

retstat:
  | RETURN el=explist? PONTOVIRG? {Return (el) }
  ;

funcname:
  | id=ID pir=ponto_id_rule* dpir=doispontos_id_rule? {NomeFunc (id,pir, dpir) }
  ;

ponto_id_rule:
  | PONTO id=ID {Ponto (id) }
  ;

doispontos_id_rule:
  | DOISPONTOS id=ID {DoisPontos (id) }
  ;

varlist:
  | v=var vvr=virgula_var_rule* {(v,vvr) }
  ;

virgula_var_rule:
  | VIRGULA v=var { (v) }
  ;

var:
  | id=ID {Var_i (id)}
  | p=prefixexp ACOLCHETE e=exp FCOLCHETE {Var_exp (p,e) }
  | p=prefixexp PONTO id=ID {Var_id (p,id) }
  ;

namelist:
  | id=ID aer=atribuicao_explist_regra? vir=virgula_id_rule* {(id,aer,vir)}
  ;

virgula_id_rule:
  | VIRGULA id=ID aer=atribuicao_explist_regra? {(id,aer) }
  ;

name_list:
  | id=ID vir=virgul_a_id_rule* {(id,vir)}
  ;

virgul_a_id_rule:
  | VIRGULA id=ID {(id) }
  ;

listanome:
  | id=ID DOISPONTOS INTEIRO vir=virgula_id_regra* {((id,Inteiro),vir)}
  | id=ID DOISPONTOS PFLUT vir=virgula_id_regra* {((id,PFlut),vir)}
  | id=ID DOISPONTOS CHAR vir=virgula_id_regra* {((id,Char),vir)}
  ;

virgula_id_regra:
  | VIRGULA id=ID DOISPONTOS INTEIRO {(id, Inteiro) }
  | VIRGULA id=ID DOISPONTOS PFLUT {(id, PFlut) }
  | VIRGULA id=ID DOISPONTOS CHAR {(id, Char) }
  ;


explist:
  | e=exp ver=virgula_exp_rule* {(e, ver)}
  ;

virgula_exp_rule:
  | VIRGULA e=exp {(e) }
  ;

exp:
  | NIL {Nil }
  | FALSE {False }
  | TRUE {True }
  | i=INT {Int (i) }
  | f=FLOAT {Float (f)}
  | s=STRING {String (s)}
  | ct=constTabela {Tabela (ct)}
  | f=functiondef {Funcdef (f)}
  | p=prefixexp {Prefix (p)}
  | e1=exp MAIS e2=exp {Expressao (e1,Mais,e2)}
  | e1=exp MENOS e2=exp {Expressao (e1,Menos,e2)}
  | e1=exp MULT e2=exp {Expressao (e1,Mult,e2)}
  | e1=exp DIV e2=exp {Expressao (e1,Div,e2)}
  | e1=exp MOD e2=exp {Expressao (e1,Mod,e2)}
 (* | e1=exp PONTOPONTO e2=exp {Expressao (e1,PontoPonto,e2)}        concatenação de string *)
  | e1=exp MENOR e2=exp {Expressao (e1,Menor,e2)}
  | e1=exp MENORIGUAL e2=exp {Expressao (e1,MenorIgual,e2)}
  | e1=exp MAIOR e2=exp {Expressao (e1,Maior,e2)}
  | e1=exp MAIORIGUAL e2=exp {Expressao (e1,MaiorIgual,e2)}
  | e1=exp IGUAL e2=exp {Expressao (e1,Igual,e2)}
  | e1=exp DIFERENTE e2=exp {Expressao (e1,Diferente,e2)}
  | e1=exp AND e2=exp {Expressao (e1,And,e2)}
  | e1=exp OR e2=exp {Expressao (e1,Or,e2)}
  | MENOS e1=exp {ExpressaoUn (Menos,e1)}
  | NOT e1=exp {ExpressaoUn (Not,e1)}
  | TONUMBER APARENT r=read FPARENT {Tonumber(r)}
  ;



read:
  | READ APARENT FPARENT{ Read }
  ;

prefixexp:
  | v=var {Var(v) }
  | fc=functioncall {Funcao (fc) }
  | APARENT e=exp FPARENT {Exp (e) }
  ;

functioncall:
  | p=prefixexp a=args {ChamadaFunc1 (p,a) }
  | p=prefixexp DOISPONTOS id=ID a=args {ChamadaFunc2 (p,id,a) }
  ;

args:
  | APARENT el=explist? FPARENT {ArgParent (el)}
  | t=constTabela { TabelaConst(t) }
  | s=STRING {String (s)}
  ;

functiondef:
  | FUNCTION funcbody { Functiondef}
  ;

funcbody:
  | APARENT p=parlist? FPARENT b=block END {CorpoFunc (p,b) }
  ;

parlist:
  | nl=listanome {ListaParam (nl)}
  ;

constTabela:
  | ACHAVES lc=listacampos? FCHAVES { (lc)}

listacampos:
  | c=campo ffr=fieldsep_field_rule* sc=sepcampos? { (c,ffr,sc) }
  ;

fieldsep_field_rule:
  | sc=sepcampos c=campo {(sc,c)}
  ;

campo:
  | ACOLCHETE e1=exp FCOLCHETE ATRIB e2=exp {AtribExp(e1,e2) }
  | id=ID ATRIB e=exp {AtribId(id,e) }
  | e=exp {Exp_campo(e) }
  ;

sepcampos:
  | VIRGULA { Virgula}
  | PONTOVIRG {PontoVirgula }
  ;

