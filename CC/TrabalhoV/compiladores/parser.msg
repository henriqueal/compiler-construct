program: ABREPARENTESE TRUE FECHAPARENTESE WHILE 
##
## Ends in an error in state: 152.
##
## functioncall -> prefixexp . args [ WHILE UNTIL STRING RETURN REPEAT PRINT PONTOEVIRGULA PONTO LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO BREAK ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## functioncall -> prefixexp . DOISPONTOS ID args [ WHILE UNTIL STRING RETURN REPEAT PRINT PONTOEVIRGULA PONTO LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO BREAK ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . ABRECOLCHETE exp FECHACOLCHETE [ VIRGULA STRING PONTO DOISPONTOS ATRIBUICAO ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . PONTO ID [ VIRGULA STRING PONTO DOISPONTOS ATRIBUICAO ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp 
##

Esperava: argumentos, doispontos, abrecolchete ou ponto

program: ABREPARENTESE TRUE WHILE 
##
## Ends in an error in state: 94.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHAPARENTESE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## prefixexp -> ABREPARENTESE exp . FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE exp 
##

Esperava: operador binario ou ')'

program: ABREPARENTESE WHILE 
##
## Ends in an error in state: 36.
##
## prefixexp -> ABREPARENTESE . exp FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE 
##

Esperava: expressão

program: DO RETURN ELSEIF 
##
## Ends in an error in state: 167.
##
## stat -> DO block . END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: end

program: DO VIRGULA 
##
## Ends in an error in state: 144.
##
## stat -> DO . block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DO 
##

Esperava: bloco

program: DOISDOISPONTOS ID WHILE 
##
## Ends in an error in state: 142.
##
## label -> DOISDOISPONTOS ID . DOISDOISPONTOS [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DOISDOISPONTOS ID 
##

Esperava: ::

program: DOISDOISPONTOS WHILE 
##
## Ends in an error in state: 141.
##
## label -> DOISDOISPONTOS . ID DOISDOISPONTOS [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DOISDOISPONTOS 
##

Esperava: identificador

program: FOR ID ATRIBUICAO TRUE VIRGULA TRUE DO RETURN ELSEIF 
##
## Ends in an error in state: 169.
##
## stat -> FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block . END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: end

program: FOR ID ATRIBUICAO TRUE VIRGULA TRUE DO VIRGULA 
##
## Ends in an error in state: 140.
##
## stat -> FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO . block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO 
##

Esperava: bloco

program: FOR ID ATRIBUICAO TRUE VIRGULA TRUE VIRGULA TRUE WHILE 
##
## Ends in an error in state: 138.
##
## comma_exp_rule -> VIRGULA exp . [ DO ]
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DO DIVISAO DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## VIRGULA exp 
##

Esperava: do ou operador binario 

program: FOR ID ATRIBUICAO TRUE VIRGULA TRUE VIRGULA WHILE 
##
## Ends in an error in state: 137.
##
## comma_exp_rule -> VIRGULA . exp [ DO ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava: expressao

program: FOR ID ATRIBUICAO TRUE VIRGULA TRUE WHILE 
##
## Ends in an error in state: 136.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DO DIVISAO DIFERENTE AND ]
## stat -> FOR ID ATRIBUICAO exp VIRGULA exp . option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA exp 
##

Esperava: operador binario ou option

program: FOR ID ATRIBUICAO TRUE VIRGULA WHILE 
##
## Ends in an error in state: 135.
##
## stat -> FOR ID ATRIBUICAO exp VIRGULA . exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp VIRGULA 
##

Esperava: expressao

program: FOR ID ATRIBUICAO TRUE WHILE 
##
## Ends in an error in state: 134.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> FOR ID ATRIBUICAO exp . VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO exp 
##

Esperava: operador binario ou ','

program: FOR ID ATRIBUICAO WHILE 
##
## Ends in an error in state: 133.
##
## stat -> FOR ID ATRIBUICAO . exp VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIBUICAO 
##

Esperava: expressao

program: FOR ID IN TRUE DO RETURN ELSEIF 
##
## Ends in an error in state: 176.
##
## stat -> FOR namelist IN explist DO block . END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN explist DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: end

program: FOR ID IN TRUE DO VIRGULA 
##
## Ends in an error in state: 175.
##
## stat -> FOR namelist IN explist DO . block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN explist DO 
##

Esperava: bloco

program: FOR ID IN TRUE WHILE 
##
## Ends in an error in state: 174.
##
## stat -> FOR namelist IN explist . DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN explist 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 99, spurious reduction of production list(virgula_exp_rule) -> 
## In state 104, spurious reduction of production explist -> exp list(virgula_exp_rule) 
##

Esperava: do

program: FOR ID IN WHILE 
##
## Ends in an error in state: 173.
##
## stat -> FOR namelist IN . explist DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist IN 
##

Esperava: explist

program: FOR ID VIRGULA ID WHILE 
##
## Ends in an error in state: 172.
##
## stat -> FOR namelist . IN explist DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR namelist 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production list(virgula_id_rule) -> 
## In state 25, spurious reduction of production list(virgula_id_rule) -> virgula_id_rule list(virgula_id_rule) 
## In state 26, spurious reduction of production namelist -> ID list(virgula_id_rule) 
##

Esperava: in

program: FOR ID WHILE 
##
## Ends in an error in state: 132.
##
## namelist -> ID . list(virgula_id_rule) [ IN ]
## stat -> FOR ID . ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

program: FOR WHILE 
##
## Ends in an error in state: 131.
##
## stat -> FOR . ID ATRIBUICAO exp VIRGULA exp option(comma_exp_rule) DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
## stat -> FOR . namelist IN explist DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FOR 
##

Esperava: id ou namelist

program: FUNCTION ID DOISPONTOS ID WHILE 
##
## Ends in an error in state: 129.
##
## stat -> FUNCTION funcname . funcbody [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION funcname 
##

Esperava: corpo de funcao

program: FUNCTION ID DOISPONTOS WHILE 
##
## Ends in an error in state: 125.
##
## doispontos_id_rule -> DOISPONTOS . ID [ ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## DOISPONTOS 
##

Esperava: identificador

program: FUNCTION ID PONTO ID WHILE 
##
## Ends in an error in state: 122.
##
## list(ponto_id_rule) -> ponto_id_rule . list(ponto_id_rule) [ DOISPONTOS ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ponto_id_rule 
##

Esperava: lista

program: FUNCTION ID PONTO WHILE 
##
## Ends in an error in state: 120.
##
## ponto_id_rule -> PONTO . ID [ PONTO DOISPONTOS ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## PONTO 
##

Esperava identificador

program: FUNCTION ID WHILE 
##
## Ends in an error in state: 119.
##
## funcname -> ID . list(ponto_id_rule) option(doispontos_id_rule) [ ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava: lista

program: FUNCTION WHILE 
##
## Ends in an error in state: 118.
##
## stat -> FUNCTION . funcname funcbody [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

Esperava: nome da funcao

program: GOTO WHILE 
##
## Ends in an error in state: 116.
##
## stat -> GOTO . ID [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## GOTO 
##

Esperava: identificador

program: ID ABRECOLCHETE TRUE WHILE 
##
## Ends in an error in state: 53.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACOLCHETE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## var -> prefixexp ABRECOLCHETE exp . FECHACOLCHETE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK ATRIBUICAO AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp ABRECOLCHETE exp 
##

Esperava operador binario ou ']'

program: ID ABRECOLCHETE WHILE 
##
## Ends in an error in state: 50.
##
## var -> prefixexp ABRECOLCHETE . exp FECHACOLCHETE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK ATRIBUICAO AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp ABRECOLCHETE 
##

Esperava: expressao

program: ID ATRIBUICAO WHILE 
##
## Ends in an error in state: 147.
##
## stat -> varlist ATRIBUICAO . explist [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## varlist ATRIBUICAO 
##

Esperava: lista de expressoes

program: ID DOISPONTOS ID WHILE 
##
## Ends in an error in state: 47.
##
## functioncall -> prefixexp DOISPONTOS ID . args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp DOISPONTOS ID 
##

Esperava: argumentos

program: ID DOISPONTOS WHILE 
##
## Ends in an error in state: 46.
##
## functioncall -> prefixexp DOISPONTOS . ID args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp DOISPONTOS 
##

Esperava: identificador

program: ID PONTO WHILE 
##
## Ends in an error in state: 44.
##
## var -> prefixexp PONTO . ID [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK ATRIBUICAO AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp PONTO 
##

Esperava: identificador

program: ID STRING VIRGULA 
##
## Ends in an error in state: 159.
##
## prefixexp -> functioncall . [ STRING PONTO DOISPONTOS ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## stat -> functioncall . [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## functioncall 
##

Esperava: '[' ou '='

program: ID VIRGULA ID WHILE 
##
## Ends in an error in state: 151.
##
## prefixexp -> var . [ STRING PONTO DOISPONTOS ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## virgula_var_rule -> VIRGULA var . [ VIRGULA ATRIBUICAO ]
##
## The known suffix of the stack is as follows:
## VIRGULA var 
##

Esperava: '[' ou '='

program: ID VIRGULA WHILE 
##
## Ends in an error in state: 150.
##
## virgula_var_rule -> VIRGULA . var [ VIRGULA ATRIBUICAO ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava: variavel

program: ID WHILE 
##
## Ends in an error in state: 149.
##
## prefixexp -> var . [ STRING PONTO DOISPONTOS ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## varlist -> var . list(virgula_var_rule) [ ATRIBUICAO ]
##
## The known suffix of the stack is as follows:
## var 
##

Esperava: '[' ou '='

program: IF FUNCTION ABREPARENTESE FECHAPARENTESE RETURN ELSEIF 
##
## Ends in an error in state: 194.
##
## funcbody -> ABREPARENTESE option(parlist) FECHAPARENTESE block . END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(parlist) FECHAPARENTESE block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: end

program: IF FUNCTION ABREPARENTESE FECHAPARENTESE VIRGULA 
##
## Ends in an error in state: 29.
##
## funcbody -> ABREPARENTESE option(parlist) FECHAPARENTESE . block END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(parlist) FECHAPARENTESE 
##

Esperava: bloco

program: IF FUNCTION ABREPARENTESE ID WHILE 
##
## Ends in an error in state: 196.
##
## parlist -> namelist . option(virgula_tres_pontos_rule) [ FECHAPARENTESE ]
##
## The known suffix of the stack is as follows:
## namelist 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 21, spurious reduction of production list(virgula_id_rule) -> 
## In state 26, spurious reduction of production namelist -> ID list(virgula_id_rule) 
##

Esperava: ','

program: IF FUNCTION ABREPARENTESE PONTOPONTOPONTO FECHACOLCHETE 
##
## Ends in an error in state: 28.
##
## funcbody -> ABREPARENTESE option(parlist) . FECHAPARENTESE block END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(parlist) 
##

Esperava: ')'

program: IF FUNCTION ABREPARENTESE WHILE 
##
## Ends in an error in state: 19.
##
## funcbody -> ABREPARENTESE . option(parlist) FECHAPARENTESE block END [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE 
##

Esperava: ')'

program: IF FUNCTION WHILE 
##
## Ends in an error in state: 18.
##
## functiondef -> FUNCTION . funcbody [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

Esperava: corpo da funcao

program: IF ID TRUE 
##
## Ends in an error in state: 43.
##
## exp -> prefixexp . [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## functioncall -> prefixexp . args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## functioncall -> prefixexp . DOISPONTOS ID args [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . ABRECOLCHETE exp FECHACOLCHETE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
## var -> prefixexp . PONTO ID [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp 
##

Esperava: '[' ou '=', argumentos, ':', '[', '.'

program: IF SUBTRACAO TRUE TRUE 
##
## Ends in an error in state: 73.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## exp -> unop exp . [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## unop exp 
##

Esperava: operador binario, '['

program: IF SUBTRACAO WHILE 
##
## Ends in an error in state: 41.
##
## exp -> unop . exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## unop 
##

Esperava: '[' ou '='

program: IF TONUMBER ABREPARENTESE READ ABREPARENTESE FECHAPARENTESE WHILE 
##
## Ends in an error in state: 8.
##
## exp -> TONUMBER ABREPARENTESE read . FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## TONUMBER ABREPARENTESE read 
##

Esperava: ')'

program: IF TONUMBER ABREPARENTESE READ ABREPARENTESE WHILE 
##
## Ends in an error in state: 6.
##
## read -> READ ABREPARENTESE . FECHAPARENTESE [ FECHAPARENTESE ]
##
## The known suffix of the stack is as follows:
## READ ABREPARENTESE 
##

Esperava: ')'

program: IF TONUMBER ABREPARENTESE READ WHILE 
##
## Ends in an error in state: 5.
##
## read -> READ . ABREPARENTESE FECHAPARENTESE [ FECHAPARENTESE ]
##
## The known suffix of the stack is as follows:
## READ 
##

Esperava: '('

program: IF TONUMBER ABREPARENTESE WHILE 
##
## Ends in an error in state: 4.
##
## exp -> TONUMBER ABREPARENTESE . read FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## TONUMBER ABREPARENTESE 
##

Esperava: io.read

program: IF TONUMBER WHILE 
##
## Ends in an error in state: 3.
##
## exp -> TONUMBER . ABREPARENTESE read FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## TONUMBER 
##

Esperava: '('

program: IF TRUE THEN ELSE PONTOEVIRGULA UNTIL 
##
## Ends in an error in state: 186.
##
## stat -> IF exp THEN block list(elseif_rule) option(else_block_rule) . END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp THEN block list(elseif_rule) option(else_block_rule) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 156, spurious reduction of production list(stat) -> 
## In state 157, spurious reduction of production list(stat) -> stat list(stat) 
## In state 160, spurious reduction of production option(retstat) -> 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
## In state 185, spurious reduction of production else_block_rule -> ELSE block 
## In state 188, spurious reduction of production option(else_block_rule) -> else_block_rule 
##

Esperava: end

program: IF TRUE THEN ELSE VIRGULA 
##
## Ends in an error in state: 184.
##
## else_block_rule -> ELSE . block [ END ]
##
## The known suffix of the stack is as follows:
## ELSE 
##

Esperava: bloco

program: IF TRUE THEN ELSEIF TRUE THEN BREAK UNTIL 
##
## Ends in an error in state: 189.
##
## list(elseif_rule) -> elseif_rule . list(elseif_rule) [ END ELSE ]
##
## The known suffix of the stack is as follows:
## elseif_rule 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 156, spurious reduction of production list(stat) -> 
## In state 157, spurious reduction of production list(stat) -> stat list(stat) 
## In state 160, spurious reduction of production option(retstat) -> 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
## In state 182, spurious reduction of production elseif_rule -> ELSEIF exp THEN block 
##

Esperava: lista

program: IF TRUE THEN ELSEIF TRUE THEN VIRGULA 
##
## Ends in an error in state: 181.
##
## elseif_rule -> ELSEIF exp THEN . block [ END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## ELSEIF exp THEN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

program: IF TRUE THEN ELSEIF TRUE WHILE 
##
## Ends in an error in state: 180.
##
## elseif_rule -> ELSEIF exp . THEN block [ END ELSEIF ELSE ]
## exp -> exp . binop exp [ THEN SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## ELSEIF exp 
##

Esperava: then ou operador binario

program: IF TRUE THEN ELSEIF WHILE 
##
## Ends in an error in state: 179.
##
## elseif_rule -> ELSEIF . exp THEN block [ END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## ELSEIF 
##

Esperava: expressao

program: IF TRUE THEN RETURN UNTIL 
##
## Ends in an error in state: 178.
##
## stat -> IF exp THEN block . list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp THEN block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: elseif

program: IF TRUE THEN VIRGULA 
##
## Ends in an error in state: 115.
##
## stat -> IF exp THEN . block list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp THEN 
##

Esperava: elseif

program: IF TRUE WHILE 
##
## Ends in an error in state: 114.
##
## exp -> exp . binop exp [ THEN SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## stat -> IF exp . THEN block list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF exp 
##

Esperava: operador binario, then

program: IF WHILE 
##
## Ends in an error in state: 113.
##
## stat -> IF . exp THEN block list(elseif_rule) option(else_block_rule) END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## IF 
##

Esperava: expressao

program: LOCAL ID ATRIBUICAO WHILE 
##
## Ends in an error in state: 109.
##
## atribuicao_explist_rule -> ATRIBUICAO . explist [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ATRIBUICAO 
##

Esperava: '[' ou '='

program: LOCAL ID FECHAPARENTESE 
##
## Ends in an error in state: 108.
##
## stat -> LOCAL namelist . option(atribuicao_explist_rule) [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## LOCAL namelist 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 21, spurious reduction of production list(virgula_id_rule) -> 
## In state 26, spurious reduction of production namelist -> ID list(virgula_id_rule) 
##

Esperava: '='

program: LOCAL ID TRUE 
##
## Ends in an error in state: 21.
##
## namelist -> ID . list(virgula_id_rule) [ WHILE VIRGULA UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ATRIBUICAO ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava: lista(',')

program: LOCAL ID VIRGULA ID TRUE 
##
## Ends in an error in state: 24.
##
## list(virgula_id_rule) -> virgula_id_rule . list(virgula_id_rule) [ WHILE VIRGULA UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IN IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ATRIBUICAO ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## virgula_id_rule 
##

Esperava: ','

program: LOCAL ID VIRGULA WHILE 
##
## Ends in an error in state: 22.
##
## virgula_id_rule -> VIRGULA . ID [ WHILE VIRGULA UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IN IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ATRIBUICAO ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava: identificador

program: LOCAL WHILE 
##
## Ends in an error in state: 107.
##
## stat -> LOCAL . namelist option(atribuicao_explist_rule) [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## LOCAL 
##

Esperava: nome

program: PONTOEVIRGULA VIRGULA 
##
## Ends in an error in state: 156.
##
## list(stat) -> stat . list(stat) [ UNTIL RETURN EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## stat 
##

Esperava: lista(until, return, eof, end, elseif ou else)

program: PRINT ABRECHAVES ABRECOLCHETE TRUE FECHACOLCHETE ATRIBUICAO TRUE WHILE 
##
## Ends in an error in state: 79.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO exp . [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO exp 
##

Esperava: operador binario

program: PRINT ABRECHAVES ABRECOLCHETE TRUE FECHACOLCHETE ATRIBUICAO WHILE 
##
## Ends in an error in state: 78.
##
## field -> ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO . exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp FECHACOLCHETE ATRIBUICAO 
##

Esperava: expressao

program: PRINT ABRECHAVES ABRECOLCHETE TRUE FECHACOLCHETE WHILE 
##
## Ends in an error in state: 77.
##
## field -> ABRECOLCHETE exp FECHACOLCHETE . ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp FECHACOLCHETE 
##

Esperava: '='

program: PRINT ABRECHAVES ABRECOLCHETE TRUE WHILE 
##
## Ends in an error in state: 76.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACOLCHETE EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> ABRECOLCHETE exp . FECHACOLCHETE ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE exp 
##

Esperava: operador binario, ']'

program: PRINT ABRECHAVES ABRECOLCHETE WHILE 
##
## Ends in an error in state: 75.
##
## field -> ABRECOLCHETE . exp FECHACOLCHETE ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECOLCHETE 
##

Esperava: expressao

program: PRINT ABRECHAVES ID ATRIBUICAO TRUE WHILE 
##
## Ends in an error in state: 74.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> ID ATRIBUICAO exp . [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ID ATRIBUICAO exp 
##

Esperava: operador binario, '[', ','

program: PRINT ABRECHAVES ID ATRIBUICAO WHILE 
##
## Ends in an error in state: 39.
##
## field -> ID ATRIBUICAO . exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## ID ATRIBUICAO 
##

Esperava: ',' ou valor para o identificador

program: PRINT ABRECHAVES ID WHILE 
##
## Ends in an error in state: 38.
##
## field -> ID . ATRIBUICAO exp [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
## var -> ID . [ VIRGULA SUBTRACAO STRING SOMA PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DOISPONTOS DIVISAO DIFERENTE AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava: '=' ou ','

program: PRINT ABRECHAVES TRUE VIRGULA WHILE 
##
## Ends in an error in state: 91.
##
## fieldsep_field_rule -> fieldsep . field [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## fieldsep 
##

Esperava: campo de tabela

program: PRINT ABRECHAVES TRUE WHILE 
##
## Ends in an error in state: 93.
##
## exp -> exp . binop exp [ VIRGULA SUBTRACAO SOMA PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE FECHACHAVES EXPONENCIACAO DIVISAO DIFERENTE AND ]
## field -> exp . [ VIRGULA PONTOEVIRGULA FECHACHAVES ]
##
## The known suffix of the stack is as follows:
## exp 
##

Esperava: operador binario ou ','

program: PRINT ABRECHAVES WHILE 
##
## Ends in an error in state: 37.
##
## tableconstructor -> ABRECHAVES . option(fieldlist) FECHACHAVES [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABRECHAVES 
##

Esperava: '{'

program: PRINT ABREPARENTESE TRUE EOF 
##
## Ends in an error in state: 96.
##
## args -> ABREPARENTESE option(explist) . FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE option(explist) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 99, spurious reduction of production list(virgula_exp_rule) -> 
## In state 104, spurious reduction of production explist -> exp list(virgula_exp_rule) 
## In state 98, spurious reduction of production option(explist) -> explist 
##

Esperava: ')' ou "

program: PRINT ABREPARENTESE WHILE 
##
## Ends in an error in state: 33.
##
## args -> ABREPARENTESE . option(explist) FECHAPARENTESE [ WHILE VIRGULA UNTIL THEN SUBTRACAO STRING SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA PONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISPONTOS DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ABRECOLCHETE ABRECHAVES ]
##
## The known suffix of the stack is as follows:
## ABREPARENTESE 
##

Esperava: ')' ou expressao

program: PRINT WHILE 
##
## Ends in an error in state: 31.
##
## stat -> PRINT . args [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## PRINT 
##

Esperava: argumentos no print 

program: REPEAT RETURN EOF
##
## Ends in an error in state: 191.
##
## stat -> REPEAT block . UNTIL exp [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: until

program: REPEAT UNTIL TRUE VIRGULA 
##
## Ends in an error in state: 193.
##
## exp -> exp . binop exp [ WHILE UNTIL SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## stat -> REPEAT block UNTIL exp . [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT block UNTIL exp 
##

Esperava operador binario ou '['

program: REPEAT UNTIL WHILE 
##
## Ends in an error in state: 192.
##
## stat -> REPEAT block UNTIL . exp [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT block UNTIL 
##

Esperva: expressao no repeat

program: REPEAT VIRGULA 
##
## Ends in an error in state: 30.
##
## stat -> REPEAT . block UNTIL exp [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## REPEAT 
##

Esperava: bloco

program: RETURN END 
##
## Ends in an error in state: 207.
##
## program -> block . EOF [ # ]
##
## The known suffix of the stack is as follows:
## block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava: EOF

program: RETURN TRUE DOISDOISPONTOS 
##
## Ends in an error in state: 162.
##
## retstat -> RETURN option(explist) . option(PONTOEVIRGULA) [ UNTIL EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN option(explist) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 99, spurious reduction of production list(virgula_exp_rule) -> 
## In state 104, spurious reduction of production explist -> exp list(virgula_exp_rule) 
## In state 98, spurious reduction of production option(explist) -> explist 
##

Esperava: ';', end, eof, else, elseif

program: RETURN TRUE SUBTRACAO TRUE TRUE 
##
## Ends in an error in state: 71.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## exp -> exp binop exp . [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## exp binop exp 
##

Esperava: operador binario ou '['

program: RETURN TRUE SUBTRACAO WHILE 
##
## Ends in an error in state: 70.
##
## exp -> exp binop . exp [ WHILE VIRGULA UNTIL THEN SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE FECHACOLCHETE FECHACHAVES EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## exp binop 
##

Esperava: expressao

program: RETURN TRUE TRUE 
##
## Ends in an error in state: 99.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## explist -> exp . list(virgula_exp_rule) [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## exp 
##

Esperava: operador binario ou ','

program: RETURN TRUE VIRGULA TRUE TRUE 
##
## Ends in an error in state: 101.
##
## exp -> exp . binop exp [ WHILE VIRGULA UNTIL SUBTRACAO SOMA RETURN REPEAT PRINT PONTOPONTO PONTOEVIRGULA OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR LOCAL IGUALDADE IF ID GOTO FUNCTION FOR FECHAPARENTESE EXPONENCIACAO EOF END ELSEIF ELSE DOISDOISPONTOS DO DIVISAO DIFERENTE BREAK AND ABREPARENTESE ]
## virgula_exp_rule -> VIRGULA exp . [ WHILE VIRGULA UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## VIRGULA exp 
##

Esperava: operador binario 

program: RETURN TRUE VIRGULA WHILE 
##
## Ends in an error in state: 100.
##
## virgula_exp_rule -> VIRGULA . exp [ WHILE VIRGULA UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR FECHAPARENTESE EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava: expressao

program: RETURN WHILE 
##
## Ends in an error in state: 161.
##
## retstat -> RETURN . option(explist) option(PONTOEVIRGULA) [ UNTIL EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN 
##

Esperava: variavel no "return"

program: VIRGULA 
##
## Ends in an error in state: 0.
##
## program' -> . program [ # ]
##
## The known suffix of the stack is as follows:
## 
##

Esperava: expressao

program: WHILE TRUE DO RETURN ELSEIF 
##
## Ends in an error in state: 204.
##
## stat -> WHILE exp DO block . END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE exp DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 161, spurious reduction of production option(explist) -> 
## In state 162, spurious reduction of production option(PONTOEVIRGULA) -> 
## In state 164, spurious reduction of production retstat -> RETURN option(explist) option(PONTOEVIRGULA) 
## In state 165, spurious reduction of production option(retstat) -> retstat 
## In state 166, spurious reduction of production block -> list(stat) option(retstat) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

program: WHILE TRUE DO VIRGULA 
##
## Ends in an error in state: 203.
##
## stat -> WHILE exp DO . block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE exp DO 
##

Esperava: bloco

program: WHILE TRUE WHILE 
##
## Ends in an error in state: 202.
##
## exp -> exp . binop exp [ SUBTRACAO SOMA PONTOPONTO OR MULTIPLICACAO MODULO MENORIGUAL MENOR MAIORIGUAL MAIOR IGUALDADE EXPONENCIACAO DO DIVISAO DIFERENTE AND ]
## stat -> WHILE exp . DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE exp 
##

Esperava: operador binario ou 'do'

program: WHILE WHILE 
##
## Ends in an error in state: 1.
##
## stat -> WHILE . exp DO block END [ WHILE UNTIL RETURN REPEAT PRINT PONTOEVIRGULA LOCAL IF ID GOTO FUNCTION FOR EOF END ELSEIF ELSE DOISDOISPONTOS DO BREAK ABREPARENTESE ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

Esperava: expressao

