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

%start <unit> chunk

%%

chunk:
  | block; EOF { }
  ;

block:
  | stat* retstat? { }
  ;

stat:
  | PONTOEVIRGULA { }
  | varlist ATRIBUICAO explist { }
  | functioncall { }
  | label { }
  | BREAK { }
  | GOTO ID { }
  | DO block END { }
  | WHILE exp DO block END { }
  | REPEAT block UNTIL exp { }
  | IF exp THEN block elseif_rule* else_block_rule? END { }
  | FOR ID ATRIBUICAO exp VIRGULA exp comma_exp_rule? DO block END { }
  | FOR namelist IN explist DO block END { }
  | FUNCTION funcname funcbody { }
  | LOCAL namelist atribuicao_explist_rule? { }
  ;

(* AUXILIARES PARA A REGRA STAT *)
elseif_rule:
  | ELSEIF exp THEN block { }
  ;

else_block_rule:
  | ELSE block { }
  ;

comma_exp_rule:
  | VIRGULA exp { }
  ;
atribuicao_explist_rule:
  | ATRIBUICAO explist { }
  ;
  (* --------------------------- *)

retstat:
  | RETURN explist? PONTOEVIRGULA? { }
  ;

label:
  | DOISDOISPONTOS ID DOISDOISPONTOS { }
  ;

funcname:
  | ID ponto_id_rule* doispontos_id_rule? { }
  ;

  (* auxiliares para funcname *)

ponto_id_rule:
  | PONTO ID { }
  ;
doispontos_id_rule:
  | DOISPONTOS ID { }
  ;
  (* --------------------------- *)

varlist:
  | var virgula_var_rule* { }
  ;
  (* auxiliares var list *)
virgula_var_rule:
  | VIRGULA var { }
  ;
  (* --------------------------- *)

var:
  | ID
  | prefixexp ABRECOLCHETE exp FECHACOLCHETE { }
  | prefixexp PONTO ID { }
  ;

namelist:
  | ID virgula_id_rule* { }
  ;
  (* namelist auxiliares *)
virgula_id_rule:
  | VIRGULA ID { }
  ;
  (* --------------------------- *)

explist:
  | exp virgula_exp_rule* { }
  ;
  (* auxiliar para explist *)
virgula_exp_rule:
  | VIRGULA exp { }
  ;
  (* --------------------------- *)

exp:
  | NIL { }
  | FALSE { }
  | TRUE { }
  | INT { }
  | FLOAT { }
  | STRING { }
  | PONTOPONTOPONTO { }
  | functiondef { }
  | prefixexp { }
  | tableconstructor { }
  | exp binop exp { }
  | unop exp { }
  ;

prefixexp:
  | var { }
  | functioncall { }
  | ABREPARENTESE exp FECHAPARENTESE { }
  ;

functioncall:
  | prefixexp args { }
  | prefixexp DOISPONTOS ID args { }
  ;

args:
  | ABREPARENTESE explist? FECHAPARENTESE { }
  | tableconstructor { }
  | STRING { }
  ;

functiondef:
  | FUNCTION funcbody { }
  ;

funcbody:
  | ABREPARENTESE parlist? FECHAPARENTESE block END { }
  ;

parlist:
  | namelist virgula_tres_pontos_rule? { }
  | PONTOPONTOPONTO { }
  ;
  (* parlist auxiliar *)
virgula_tres_pontos_rule:
  | VIRGULA PONTOPONTOPONTO { }
  ;
  (* --------------------------- *)

tableconstructor:
  | ABRECHAVES fieldlist? FECHACHAVES { }
  ;

fieldlist:
  | field fieldsep_field_rule* fieldsep? { }
  ;
  (* auxiliar fieldlist *)
fieldsep_field_rule:
  | fieldsep field { }
  ;
  (* --------------------------- *)

field:
  | ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO exp { }
  | ID ATRIBUICAO exp { }
  | exp { }
  ;

fieldsep:
  | VIRGULA { }
  | PONTOEVIRGULA { }
  ;

binop:
  | SOMA { }
  | SUBTRACAO { }
  | MULTIPLICACAO { }
  | DIVISAO { }
  | EXPONENCIACAO { }
  | MODULO { }
  | PONTOPONTO { }
  | MENOR { }
  | MENORIGUAL { }
  | MAIOR { }
  | MAIORIGUAL { }
  | IGUALDADE { }
  | DIFERENTE { }
  | AND { }
  | OR { }
  ;

unop:
  | SUBTRACAO { }
  | NOT { }
  | QUADRADO { }
  ;
