
%{

%}

%token <int> INT
%token <float> FLOAT
%token <string> ID
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
%token ADICAO
%token SUBTRACAO
%token MULTIPLICACAO
%token DIVISAO
%token MODULO
%token EXPONENCIACAO
%token COMPRIMENTO
%token EQUIVALENTE
%token NAOEQUIVALENTE
%token MENOROUIGUAL
%token MAIOROUIGUAL
%token MENOR
%token MAIOR
%token IGUAL
%token ABREPARENTESE
%token FECHABREPARENTESEENTESE
%token ABRECHAVES
%token FECHACHAVES
%token ABRECOLCHETE
%token FECHACOLCHETE
%token DOISPONTOSDUPLO
%token PONTOEVIRGULA
%token DOISPOTNOS
%token VIRGULA
%token PONTO
%token PONTODUPLO
%token PONTOTRIPLO
%token EOF
%token WRITE
%token ASPASSIMPLES


%left ADICAO SUBTRACAO DIVISAO MULTIPLICACAO
%left MAIOR MENOR MAIOROUIGUAL MENOROUIGUAL NAOEQUIVALENTE EQUIVALENTE 
%left OR AND IGUAL
%right EXPONENCIACAO
%nonassoc IN

%start <unit> prog

%%

prog:
  | expr EOF {}
  ;
  

  
expr:
  | INT { }
  | FLOAT { }
  | ID { }
  | booleano 	{ }
  | print   	{ }
  | atribuicao 	{ }
  | condicao	 	{ }
  | loopWhile	{ }
  | NOT expr 	{ }
  | expr exprAritmetica expr 	{ }
  | expr comparacao expr 	{ }
  | RETURN expr 	{ }
  ;   


booleano:
	| TRUE 	{ }
	| FALSE	{ }
	;


print:
   	| WRITE ABREPARENTESE ASPASSIMPLES expr ASPASSIMPLES FECHAPARENTESE 	{ }
	  | WRITE ABREPARENTESE ASPASSIMPLES expr ASPASSIMPLES FECHAPARENTESE expr	{ }
	;
  
  
atribuicao:
  | ID ATRIBUICAO expr { }
  | ID ATRIBUICAO expr expr { }
  ;

condicao:
	| IF expr THEN expr 	{ }
   	| IF booleano THEN expr	{ }
   	| IF expr THEN expr ELSE expr END	{ }
   	| IF booleano THEN expr ELSE expr	 END{ }
  ;


loopWhile:
	| WHILE expr DO expr 	{ }
	| WHILE booleano DO expr	{ }
	| WHILE ID DO expr 	{ }
	;


  	
exprAritmetica:
   | MAIS  	{ }
   | MENOS  	{ }
   | MULTIPLICACAO  	{ }
   | DIVISAO  	{ }
   | DIVISAOINTEIRA	{ }
   ;

comparacao:
	| MAIOR { }
	| MENOR { }
	| EQUIVALENTE { }
	| MAIOROUIGUAL { }
	| MENOROUIGUAL { }
	| NAOEQUIVALENTE { }
  ;

