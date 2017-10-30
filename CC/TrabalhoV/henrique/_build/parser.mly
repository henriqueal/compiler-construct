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

%left ADICAO SUBTRACAO MULTIPLICACAO DIVISAO MODULO
%left MAIOR MENOR MAIORIGUAL MENORIGUAL IGUALDADE DIFERENTE
%left OR AND ATRIBUICAO
%right EXPONENCIACAO
%nonassoc IN

%start <Ast.tokens> chunk

%%

chunk:
  | block {}
  ;

block:
  | stat* retstat? {}
  ;

stat:
  | PONTOEVIRGULA {}
  | varlist ATRIBUICAO explist {}
  | functioncall {}
  | label {}
  | BREAK {}
  | GOTO ID {}
  | DO block END {}
  | WHILE exp DO block END {}
  | REPEAT block UNTIL exp {}
  (*| IF exp THEN block (ELSEIF exp THEN block)* (ELSE block)? END {}
  | FOR ID ATRIBUICAO exp VIRGULA exp (VIRGULA exp)? DO block END {}*)
  | FOR namelist IN explist DO block END {}
  | FUNCTION funcname funcbody {}
  (*| LOCAL namelist (ATRIBUICAO explist)? {}*)
  ;
(*
retstat:
  | RETURN explist? PONTOEVIRGULA? {}
  ;
*)
label:
  | DOISDOISPONTOS ID DOISDOISPONTOS {}
  ;

(*
funcname:
  | ID (PONTO ID)* (DOISPONTOS ID)? {}
  ;
*)
varlist:
  | var (VIRGULA var)* {}
  ;

var:
  | ID {}
  | prefixexp ABRECOLCHETE exp FECHACOLCHETE {}
  | prefixexp PONTO ID {}
  ;

namelist:
  | ID (VIRGULA ID)* {}
  ;

explist:
  | exp (VIRGULA exp)* {}
  ;

exp:
  | NIL { }
  | FALSE { }
  | TRUE { }
  | INT { }
  | FLOAT { }
  | STRING { }
  | PONTOPONTOPONTO {}
  | functiondef {}
  | prefixexp {}
  | tableconstructor {}
  | exp binop exp {}
  | unop exp {}
  ;

prefixexp:
  | var {}
  | functioncall {}
  | ABREPARENTESE exp FECHAPARENTESE {}
  ;

functioncall:
  | prefixexp args {}
  | prefixexp DOISPONTOS ID args {}
  ;

args:
  (*| ABREPARENTESE (explist)? FECHAPARENTESE {}*)
  | tableconstructor {}
  | STRING {}
  ;

functiondef:
  | FUNCTION funcbody {}
  ;
(*
funcbody:
  | ABREPARENTESE (parlist)? FECHAPARENTESE block END {}
  ;
*)
parlist:
  (*| namelist (VIRGULA PONTOPONTOPONTO)? {}*)
  | PONTOPONTOPONTO {}
  ;
(*
tableconstructor:
  | ABRECHAVES fieldlist? FECHACHAVES {}
  ;

fieldlist:
  | field (fieldsep field)* fieldsep? {}
  ;
*)
field:
  | ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO exp {}
  | ID ATRIBUICAO exp {}
  | exp {}
  ;

fieldsep:
  | VIRGULA {}
  | PONTOEVIRGULA {}
  ;

binop:
  | SOMA {}
  | SUBTRACAO {}
  | MULTIPLICACAO {}
  | DIVISAO {}
  | EXPONENCIACAO {}
  | MODULO {}
  | PONTOPONTO {}
  | MENOR {}
  | MENORIGUAL {}
  | MAIOR {}
  | MAIORIGUAL {}
  | IGUALDADE {}
  | DIFERENTE {}
  | AND {}
  | OR {}
  ;

unop:
  | SUBTRACAO {}
  | NOT {}
  | QUADRADO {}
  ;
