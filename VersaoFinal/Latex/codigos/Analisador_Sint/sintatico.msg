programa: APARENT TRUE FPARENT WRITE 
##
## Ends in an error in state: 168.
##
## functioncall -> prefixexp . args [ WRITE WHILE UNTIL STRING RETURN REPEAT PONTOVIRG PONTO LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DOISPONTOS DO APARENT ACOLCHETE ACHAVES ]
## functioncall -> prefixexp . DOISPONTOS ID args [ WRITE WHILE UNTIL STRING RETURN REPEAT PONTOVIRG PONTO LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DOISPONTOS DO APARENT ACOLCHETE ACHAVES ]
## var -> prefixexp . ACOLCHETE exp FCOLCHETE [ VIRGULA STRING PONTO DOISPONTOS ATRIB APARENT ACOLCHETE ACHAVES ]
## var -> prefixexp . PONTO ID [ VIRGULA STRING PONTO DOISPONTOS ATRIB APARENT ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp 
##

Esperava: argumento ou dois pontos ou abre colchete ou ponto.

programa: APARENT TRUE WRITE 
##
## Ends in an error in state: 107.
##
## exp -> exp . MAIS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . AND exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## exp -> exp . OR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPARENT DIV DIFERENTE AND ]
## prefixexp -> APARENT exp . FPARENT [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## APARENT exp 
##

Esperava: operador ou ")".

programa: APARENT WRITE 
##
## Ends in an error in state: 42.
##
## prefixexp -> APARENT . exp FPARENT [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## APARENT 
##

Esperava uma expressão.

programa: DO RETURN ELSEIF 
##
## Ends in an error in state: 183.
##
## stat -> DO block . END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "end".

programa: DO VIRGULA 
##
## Ends in an error in state: 154.
##
## stat -> DO . block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## DO 
##

Esperava um bloco de comandos.

programa: FOR ID ATRIB TRUE VIRGULA TRUE DO RETURN ELSEIF 
##
## Ends in an error in state: 185.
##
## stat -> FOR ID ATRIB exp VIRGULA exp option(comma_exp_rule) DO block . END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIB exp VIRGULA exp option(comma_exp_rule) DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "end".

programa: FOR ID ATRIB TRUE VIRGULA TRUE DO VIRGULA 
##
## Ends in an error in state: 153.
##
## stat -> FOR ID ATRIB exp VIRGULA exp option(comma_exp_rule) DO . block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIB exp VIRGULA exp option(comma_exp_rule) DO 
##

Esperava um bloco de comandos.

programa: FOR ID ATRIB TRUE VIRGULA TRUE VIRGULA TRUE WRITE 
##
## Ends in an error in state: 151.
##
## comma_exp_rule -> VIRGULA exp . [ DO ]
## exp -> exp . MAIS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . AND exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . OR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## VIRGULA exp 
##

Esperava a palavra reservada "do" ou algum operador.

programa: FOR ID ATRIB TRUE VIRGULA TRUE VIRGULA WRITE 
##
## Ends in an error in state: 150.
##
## comma_exp_rule -> VIRGULA . exp [ DO ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava uma expressão.

programa: FOR ID ATRIB TRUE VIRGULA TRUE WRITE 
##
## Ends in an error in state: 149.
##
## exp -> exp . MAIS exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . AND exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . OR exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## stat -> FOR ID ATRIB exp VIRGULA exp . option(comma_exp_rule) DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIB exp VIRGULA exp 
##

Esperava: operador ou a palavra reservada "do".

programa: FOR ID ATRIB TRUE VIRGULA WRITE 
##
## Ends in an error in state: 148.
##
## stat -> FOR ID ATRIB exp VIRGULA . exp option(comma_exp_rule) DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIB exp VIRGULA 
##

Esperava uma expressão.

programa: FOR ID ATRIB TRUE WRITE 
##
## Ends in an error in state: 147.
##
## exp -> exp . MAIS exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . AND exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . OR exp [ VIRGULA OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## stat -> FOR ID ATRIB exp . VIRGULA exp option(comma_exp_rule) DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIB exp 
##

Esperava: operador ou virgula.

programa: FOR ID ATRIB WRITE 
##
## Ends in an error in state: 146.
##
## stat -> FOR ID ATRIB . exp VIRGULA exp option(comma_exp_rule) DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID ATRIB 
##

Esperava uma expressão.

programa: FOR ID IN TRUE DO RETURN ELSEIF 
##
## Ends in an error in state: 195.
##
## stat -> FOR name_list IN explist DO block . END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR name_list IN explist DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "end".

programa: FOR ID IN TRUE DO VIRGULA 
##
## Ends in an error in state: 194.
##
## stat -> FOR name_list IN explist DO . block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR name_list IN explist DO 
##

Esperava um bloco de comandos.

programa: FOR ID IN TRUE WRITE 
##
## Ends in an error in state: 193.
##
## stat -> FOR name_list IN explist . DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR name_list IN explist 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 159, spurious reduction of production list(virgula_exp_rule) -> 
## In state 164, spurious reduction of production explist -> exp list(virgula_exp_rule) 
##

Esperava a palavra reservada "do".

programa: FOR ID IN WRITE 
##
## Ends in an error in state: 192.
##
## stat -> FOR name_list IN . explist DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR name_list IN 
##

Esperava uma expressão.

programa: FOR ID VIRGULA ID WRITE 
##
## Ends in an error in state: 188.
##
## list(virgul_a_id_rule) -> virgul_a_id_rule . list(virgul_a_id_rule) [ IN ]
##
## The known suffix of the stack is as follows:
## virgul_a_id_rule 
##

Esperava uma vírgula.

programa: FOR ID VIRGULA WRITE 
##
## Ends in an error in state: 144.
##
## virgul_a_id_rule -> VIRGULA . ID [ VIRGULA IN ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava um identificador.

programa: FOR ID WRITE 
##
## Ends in an error in state: 143.
##
## name_list -> ID . list(virgul_a_id_rule) [ IN ]
## stat -> FOR ID . ATRIB exp VIRGULA exp option(comma_exp_rule) DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR ID 
##

Esperava: vírgula ou "=".

programa: FOR WRITE 
##
## Ends in an error in state: 142.
##
## stat -> FOR . ID ATRIB exp VIRGULA exp option(comma_exp_rule) DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
## stat -> FOR . name_list IN explist DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FOR 
##

Esperava um identificador.

programa: FUNCTION ID DOISPONTOS ID WRITE 
##
## Ends in an error in state: 140.
##
## stat -> FUNCTION funcname . funcbody [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FUNCTION funcname 
##

Esperava o corpo da função.

programa: FUNCTION ID DOISPONTOS WRITE 
##
## Ends in an error in state: 136.
##
## doispontos_id_rule -> DOISPONTOS . ID [ APARENT ]
##
## The known suffix of the stack is as follows:
## DOISPONTOS 
##

Esperava um identificador.

programa: FUNCTION ID PONTO ID WRITE 
##
## Ends in an error in state: 133.
##
## list(ponto_id_rule) -> ponto_id_rule . list(ponto_id_rule) [ DOISPONTOS APARENT ]
##
## The known suffix of the stack is as follows:
## ponto_id_rule 
##

Esperava um identificador.

programa: FUNCTION ID PONTO WRITE 
##
## Ends in an error in state: 131.
##
## ponto_id_rule -> PONTO . ID [ PONTO DOISPONTOS APARENT ]
##
## The known suffix of the stack is as follows:
## PONTO 
##

Esperava um identificador.

programa: FUNCTION ID WRITE 
##
## Ends in an error in state: 130.
##
## funcname -> ID . list(ponto_id_rule) option(doispontos_id_rule) [ APARENT ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava um identificador.

programa: FUNCTION WRITE 
##
## Ends in an error in state: 129.
##
## stat -> FUNCTION . funcname funcbody [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

Esperava o nome da função.

programa: ID ACOLCHETE TRUE WRITE 
##
## Ends in an error in state: 57.
##
## exp -> exp . MAIS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . AND exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . OR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## var -> prefixexp ACOLCHETE exp . FCOLCHETE [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE ATRIB APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp ACOLCHETE exp 
##

Esperava um operador ou "]".

programa: ID ACOLCHETE WRITE 
##
## Ends in an error in state: 54.
##
## var -> prefixexp ACOLCHETE . exp FCOLCHETE [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE ATRIB APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp ACOLCHETE 
##

Esperava uma expressão.

programa: ID APARENT TRUE FOR 
##
## Ends in an error in state: 221.
##
## args -> APARENT option(explist) . FPARENT [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## APARENT option(explist) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 159, spurious reduction of production list(virgula_exp_rule) -> 
## In state 164, spurious reduction of production explist -> exp list(virgula_exp_rule) 
## In state 180, spurious reduction of production option(explist) -> explist 
##

Esperava um ")".

programa: ID APARENT WRITE 
##
## Ends in an error in state: 3.
##
## args -> APARENT . option(explist) FPARENT [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## APARENT 
##

Esperava uma expressão.

programa: ID ATRIB READ APARENT WRITE 
##
## Ends in an error in state: 8.
##
## read -> READ APARENT . FPARENT [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## READ APARENT 
##

Esperava um ")".

programa: ID ATRIB READ WRITE 
##
## Ends in an error in state: 7.
##
## read -> READ . APARENT FPARENT [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## READ 
##

Esperava um "(".

programa: ID ATRIB WRITE 
##
## Ends in an error in state: 156.
##
## stat -> varlist ATRIB . explist [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
## stat -> varlist ATRIB . read [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## varlist ATRIB 
##

Esperava uma expressão ou a palavra reservada "read".

programa: ID DOISPONTOS ID WRITE 
##
## Ends in an error in state: 51.
##
## functioncall -> prefixexp DOISPONTOS ID . args [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp DOISPONTOS ID 
##

Esperava um argumento.

programa: ID DOISPONTOS WRITE 
##
## Ends in an error in state: 50.
##
## functioncall -> prefixexp DOISPONTOS . ID args [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp DOISPONTOS 
##

Esperava um identificador.

programa: ID PONTO WRITE 
##
## Ends in an error in state: 48.
##
## var -> prefixexp PONTO . ID [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE ATRIB APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp PONTO 
##

Esperava um identificador.

programa: ID STRING VIRGULA 
##
## Ends in an error in state: 174.
##
## prefixexp -> functioncall . [ STRING PONTO DOISPONTOS APARENT ACOLCHETE ACHAVES ]
## stat -> functioncall . [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## functioncall 
##

Esperava um "(".

programa: ID VIRGULA ID WRITE 
##
## Ends in an error in state: 167.
##
## prefixexp -> var . [ STRING PONTO DOISPONTOS APARENT ACOLCHETE ACHAVES ]
## virgula_var_rule -> VIRGULA var . [ VIRGULA ATRIB ]
##
## The known suffix of the stack is as follows:
## VIRGULA var 
##

Esperava algo depois da variavel.

programa: ID VIRGULA WRITE 
##
## Ends in an error in state: 166.
##
## virgula_var_rule -> VIRGULA . var [ VIRGULA ATRIB ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava uma variavel.

programa: ID WRITE 
##
## Ends in an error in state: 165.
##
## prefixexp -> var . [ STRING PONTO DOISPONTOS APARENT ACOLCHETE ACHAVES ]
## varlist -> var . list(virgula_var_rule) [ ATRIB ]
##
## The known suffix of the stack is as follows:
## var 
##

Esperava algo depois da variavel.

programa: IF ACHAVES ACOLCHETE TRUE FCOLCHETE ATRIB TRUE WRITE 
##
## Ends in an error in state: 92.
##
## campo -> ACOLCHETE exp FCOLCHETE ATRIB exp . [ VIRGULA PONTOVIRG FCHAVES ]
## exp -> exp . MAIS exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . AND exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . OR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## ACOLCHETE exp FCOLCHETE ATRIB exp 
##

Esperava: "," ou ";" ou "}" ou operador.

programa: IF ACHAVES ACOLCHETE TRUE FCOLCHETE ATRIB WRITE 
##
## Ends in an error in state: 91.
##
## campo -> ACOLCHETE exp FCOLCHETE ATRIB . exp [ VIRGULA PONTOVIRG FCHAVES ]
##
## The known suffix of the stack is as follows:
## ACOLCHETE exp FCOLCHETE ATRIB 
##

Esperava uma expressão.

programa: IF ACHAVES ACOLCHETE TRUE FCOLCHETE WRITE 
##
## Ends in an error in state: 90.
##
## campo -> ACOLCHETE exp FCOLCHETE . ATRIB exp [ VIRGULA PONTOVIRG FCHAVES ]
##
## The known suffix of the stack is as follows:
## ACOLCHETE exp FCOLCHETE 
##

Esperava um "=".

programa: IF ACHAVES ACOLCHETE TRUE WRITE 
##
## Ends in an error in state: 89.
##
## campo -> ACOLCHETE exp . FCOLCHETE ATRIB exp [ VIRGULA PONTOVIRG FCHAVES ]
## exp -> exp . MAIS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . AND exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
## exp -> exp . OR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOLCHETE DIV DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## ACOLCHETE exp 
##

Esperava: "]" ou operador.

programa: IF ACHAVES ACOLCHETE WRITE 
##
## Ends in an error in state: 88.
##
## campo -> ACOLCHETE . exp FCOLCHETE ATRIB exp [ VIRGULA PONTOVIRG FCHAVES ]
##
## The known suffix of the stack is as follows:
## ACOLCHETE 
##

Esperava uma expressão.

programa: IF ACHAVES ID ATRIB TRUE WRITE 
##
## Ends in an error in state: 87.
##
## campo -> ID ATRIB exp . [ VIRGULA PONTOVIRG FCHAVES ]
## exp -> exp . MAIS exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . AND exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . OR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## ID ATRIB exp 
##

Esperava: "," ou ";" ou "}" ou operador.

programa: IF ACHAVES ID ATRIB WRITE 
##
## Ends in an error in state: 45.
##
## campo -> ID ATRIB . exp [ VIRGULA PONTOVIRG FCHAVES ]
##
## The known suffix of the stack is as follows:
## ID ATRIB 
##

Esperava uma expressão.

programa: IF ACHAVES ID WRITE 
##
## Ends in an error in state: 44.
##
## campo -> ID . ATRIB exp [ VIRGULA PONTOVIRG FCHAVES ]
## var -> ID . [ VIRGULA STRING PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DOISPONTOS DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava algo após o identificador.

programa: IF ACHAVES TRUE VIRGULA WRITE 
##
## Ends in an error in state: 100.
##
## fieldsep_field_rule -> sepcampos . campo [ VIRGULA PONTOVIRG FCHAVES ]
##
## The known suffix of the stack is as follows:
## sepcampos 
##

Esperava um campo.

programa: IF ACHAVES TRUE WRITE 
##
## Ends in an error in state: 96.
##
## campo -> exp . [ VIRGULA PONTOVIRG FCHAVES ]
## exp -> exp . MAIS exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . AND exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
## exp -> exp . OR exp [ VIRGULA PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCHAVES DIV DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## exp 
##

Esperava: "," ou ";" ou "}" ou operador.

programa: IF ACHAVES WRITE 
##
## Ends in an error in state: 43.
##
## constTabela -> ACHAVES . option(listacampos) FCHAVES [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## ACHAVES 
##

Esperava um campo.

programa: IF FUNCTION APARENT FPARENT RETURN ELSEIF 
##
## Ends in an error in state: 215.
##
## funcbody -> APARENT option(parlist) FPARENT block . END [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## APARENT option(parlist) FPARENT block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "end".

programa: IF FUNCTION APARENT FPARENT VIRGULA 
##
## Ends in an error in state: 38.
##
## funcbody -> APARENT option(parlist) FPARENT . block END [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## APARENT option(parlist) FPARENT 
##

Esperava um bloco de comandos.

programa: IF FUNCTION APARENT ID DOISPONTOS CHAR WRITE 
##
## Ends in an error in state: 34.
##
## listanome -> ID DOISPONTOS CHAR . list(virgula_id_regra) [ FPARENT ]
##
## The known suffix of the stack is as follows:
## ID DOISPONTOS CHAR 
##

Esperava uma virgula.

programa: IF FUNCTION APARENT ID DOISPONTOS INTEIRO WRITE 
##
## Ends in an error in state: 32.
##
## listanome -> ID DOISPONTOS INTEIRO . list(virgula_id_regra) [ FPARENT ]
##
## The known suffix of the stack is as follows:
## ID DOISPONTOS INTEIRO 
##

Esperava uma virgula.

programa: IF FUNCTION APARENT ID DOISPONTOS PFLUT VIRGULA ID DOISPONTOS CHAR WRITE 
##
## Ends in an error in state: 29.
##
## list(virgula_id_regra) -> virgula_id_regra . list(virgula_id_regra) [ FPARENT ]
##
## The known suffix of the stack is as follows:
## virgula_id_regra 
##

Esperava uma virgula.

programa: IF FUNCTION APARENT ID DOISPONTOS PFLUT VIRGULA ID DOISPONTOS WRITE 
##
## Ends in an error in state: 25.
##
## virgula_id_regra -> VIRGULA ID DOISPONTOS . INTEIRO [ VIRGULA FPARENT ]
## virgula_id_regra -> VIRGULA ID DOISPONTOS . PFLUT [ VIRGULA FPARENT ]
## virgula_id_regra -> VIRGULA ID DOISPONTOS . CHAR [ VIRGULA FPARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA ID DOISPONTOS 
##

Esperava o tipo da variavel. Exemplo: "x:int", "x:float", "x:char" 

programa: IF FUNCTION APARENT ID DOISPONTOS PFLUT VIRGULA ID WRITE 
##
## Ends in an error in state: 24.
##
## virgula_id_regra -> VIRGULA ID . DOISPONTOS INTEIRO [ VIRGULA FPARENT ]
## virgula_id_regra -> VIRGULA ID . DOISPONTOS PFLUT [ VIRGULA FPARENT ]
## virgula_id_regra -> VIRGULA ID . DOISPONTOS CHAR [ VIRGULA FPARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA ID 
##

Esperava ":" depois da variavel. Exemplo: "x:int", "x:float", "x:char" 

programa: IF FUNCTION APARENT ID DOISPONTOS PFLUT VIRGULA WRITE 
##
## Ends in an error in state: 23.
##
## virgula_id_regra -> VIRGULA . ID DOISPONTOS INTEIRO [ VIRGULA FPARENT ]
## virgula_id_regra -> VIRGULA . ID DOISPONTOS PFLUT [ VIRGULA FPARENT ]
## virgula_id_regra -> VIRGULA . ID DOISPONTOS CHAR [ VIRGULA FPARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava o nome da variavel. Exemplo: "x:int", "x:float", "x:char" 

programa: IF FUNCTION APARENT ID DOISPONTOS PFLUT WRITE 
##
## Ends in an error in state: 22.
##
## listanome -> ID DOISPONTOS PFLUT . list(virgula_id_regra) [ FPARENT ]
##
## The known suffix of the stack is as follows:
## ID DOISPONTOS PFLUT 
##

Esperava uma virgula.

programa: IF FUNCTION APARENT ID DOISPONTOS WRITE 
##
## Ends in an error in state: 21.
##
## listanome -> ID DOISPONTOS . INTEIRO list(virgula_id_regra) [ FPARENT ]
## listanome -> ID DOISPONTOS . PFLUT list(virgula_id_regra) [ FPARENT ]
## listanome -> ID DOISPONTOS . CHAR list(virgula_id_regra) [ FPARENT ]
##
## The known suffix of the stack is as follows:
## ID DOISPONTOS 
##

Esperava o tipo da variavel. Exemplo: "x:int", "x:float", "x:char" 

programa: IF FUNCTION APARENT ID WRITE 
##
## Ends in an error in state: 20.
##
## listanome -> ID . DOISPONTOS INTEIRO list(virgula_id_regra) [ FPARENT ]
## listanome -> ID . DOISPONTOS PFLUT list(virgula_id_regra) [ FPARENT ]
## listanome -> ID . DOISPONTOS CHAR list(virgula_id_regra) [ FPARENT ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava ":" depois da variavel. Exemplo: "x:int", "x:float", "x:char" 

programa: IF FUNCTION APARENT WRITE 
##
## Ends in an error in state: 19.
##
## funcbody -> APARENT . option(parlist) FPARENT block END [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## APARENT 
##

Esperava um parametro correto.

programa: IF FUNCTION WRITE 
##
## Ends in an error in state: 18.
##
## functiondef -> FUNCTION . funcbody [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

Esperava o corpo da função.

programa: IF ID TRUE 
##
## Ends in an error in state: 47.
##
## exp -> prefixexp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## functioncall -> prefixexp . args [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
## functioncall -> prefixexp . DOISPONTOS ID args [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
## var -> prefixexp . ACOLCHETE exp FCOLCHETE [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
## var -> prefixexp . PONTO ID [ WRITE WHILE VIRGULA UNTIL THEN STRING RETURN REPEAT PONTOVIRG PONTO OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DOISPONTOS DO DIV DIFERENTE APARENT AND ACOLCHETE ACHAVES ]
##
## The known suffix of the stack is as follows:
## prefixexp 
##

Esperava: argumento ou dois pontos ou abre colchete ou ponto.

programa: IF MENOS TRUE TRUE 
##
## Ends in an error in state: 219.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> MENOS exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## MENOS exp 
##

Esperava: operador ou virgula.

programa: IF MENOS WRITE 
##
## Ends in an error in state: 15.
##
## exp -> MENOS . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## MENOS 
##

Esperava uma expressão.

programa: IF NOT WRITE 
##
## Ends in an error in state: 13.
##
## exp -> NOT . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## NOT 
##

Esperava uma expressão.

programa: IF TONUMBER APARENT READ APARENT FPARENT WRITE 
##
## Ends in an error in state: 10.
##
## exp -> TONUMBER APARENT read . FPARENT [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## TONUMBER APARENT read 
##

Esperava um ")".

programa: IF TONUMBER APARENT WRITE 
##
## Ends in an error in state: 6.
##
## exp -> TONUMBER APARENT . read FPARENT [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## TONUMBER APARENT 
##

Esperava a palavra reservada "read".

programa: IF TONUMBER WRITE 
##
## Ends in an error in state: 5.
##
## exp -> TONUMBER . APARENT read FPARENT [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## TONUMBER 
##

Esperava um "(".

programa: IF TRUE THEN ELSE PONTOVIRG UNTIL 
##
## Ends in an error in state: 205.
##
## stat -> IF exp THEN block list(elseif_rule) option(else_block_rule) . END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## IF exp THEN block list(elseif_rule) option(else_block_rule) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 172, spurious reduction of production list(stat) -> 
## In state 173, spurious reduction of production list(stat) -> stat list(stat) 
## In state 175, spurious reduction of production option(retstat) -> 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
## In state 204, spurious reduction of production else_block_rule -> ELSE block 
## In state 207, spurious reduction of production option(else_block_rule) -> else_block_rule 
##

Esperava a palavra reservada "end".

programa: IF TRUE THEN ELSE VIRGULA 
##
## Ends in an error in state: 203.
##
## else_block_rule -> ELSE . block [ END ]
##
## The known suffix of the stack is as follows:
## ELSE 
##

Esperava um bloco de comandos.

programa: IF TRUE THEN ELSEIF TRUE THEN PONTOVIRG UNTIL 
##
## Ends in an error in state: 208.
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
## In state 172, spurious reduction of production list(stat) -> 
## In state 173, spurious reduction of production list(stat) -> stat list(stat) 
## In state 175, spurious reduction of production option(retstat) -> 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
## In state 201, spurious reduction of production elseif_rule -> ELSEIF exp THEN block 
##

Esperava a palavra reservada "elseif".

programa: IF TRUE THEN ELSEIF TRUE THEN VIRGULA 
##
## Ends in an error in state: 200.
##
## elseif_rule -> ELSEIF exp THEN . block [ END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## ELSEIF exp THEN 
##

Esperava um bloco de comandos.

programa: IF TRUE THEN ELSEIF TRUE WRITE 
##
## Ends in an error in state: 199.
##
## elseif_rule -> ELSEIF exp . THEN block [ END ELSEIF ELSE ]
## exp -> exp . MAIS exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . AND exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . OR exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
##
## The known suffix of the stack is as follows:
## ELSEIF exp 
##

Esperava a palavra reservada "then" ou um operador.

programa: IF TRUE THEN ELSEIF WRITE 
##
## Ends in an error in state: 198.
##
## elseif_rule -> ELSEIF . exp THEN block [ END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## ELSEIF 
##

Esperava uma expressão.

programa: IF TRUE THEN RETURN UNTIL 
##
## Ends in an error in state: 197.
##
## stat -> IF exp THEN block . list(elseif_rule) option(else_block_rule) END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## IF exp THEN block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "elseif".

programa: IF TRUE THEN VIRGULA 
##
## Ends in an error in state: 128.
##
## stat -> IF exp THEN . block list(elseif_rule) option(else_block_rule) END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## IF exp THEN 
##

Esperava um bloco de comandos.

programa: IF TRUE WRITE 
##
## Ends in an error in state: 127.
##
## exp -> exp . MAIS exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . AND exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## exp -> exp . OR exp [ THEN OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DIV DIFERENTE AND ]
## stat -> IF exp . THEN block list(elseif_rule) option(else_block_rule) END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## IF exp 
##

Esperava a palavra reservada "then" ou um operador.

programa: IF WRITE 
##
## Ends in an error in state: 126.
##
## stat -> IF . exp THEN block list(elseif_rule) option(else_block_rule) END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## IF 
##

Esperava uma expressão.

programa: LOCAL ID ATRIB TRUE TRUE 
##
## Ends in an error in state: 116.
##
## atribuicao_explist_regra -> ATRIB exp . [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## ATRIB exp 
##

Esperava: "," ou operador.

programa: LOCAL ID ATRIB WRITE 
##
## Ends in an error in state: 115.
##
## atribuicao_explist_regra -> ATRIB . exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## ATRIB 
##

Esperava uma expressão.

programa: LOCAL ID TRUE 
##
## Ends in an error in state: 114.
##
## namelist -> ID . option(atribuicao_explist_regra) list(virgula_id_rule) [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava um "=".

programa: LOCAL ID VIRGULA ID TRUE 
##
## Ends in an error in state: 119.
##
## virgula_id_rule -> VIRGULA ID . option(atribuicao_explist_regra) [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA ID 
##

Esperava um "=".

programa: LOCAL ID VIRGULA WRITE 
##
## Ends in an error in state: 118.
##
## virgula_id_rule -> VIRGULA . ID option(atribuicao_explist_regra) [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava um identificador.

programa: LOCAL WRITE 
##
## Ends in an error in state: 113.
##
## stat -> LOCAL . namelist [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## LOCAL 
##

Esperava um identificador.

programa: PONTOVIRG VIRGULA 
##
## Ends in an error in state: 172.
##
## list(stat) -> stat . list(stat) [ UNTIL RETURN EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## stat 
##

Esperava um ";"

programa: REPEAT RETURN EOF 
##
## Ends in an error in state: 210.
##
## stat -> REPEAT block . UNTIL exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## REPEAT block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "until".

programa: REPEAT UNTIL TRUE VIRGULA 
##
## Ends in an error in state: 212.
##
## exp -> exp . MAIS exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## stat -> REPEAT block UNTIL exp . [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## REPEAT block UNTIL exp 
##

Esperava um operador.

programa: REPEAT UNTIL WRITE 
##
## Ends in an error in state: 211.
##
## stat -> REPEAT block UNTIL . exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## REPEAT block UNTIL 
##

Esperava uma expressão.

programa: REPEAT VIRGULA 
##
## Ends in an error in state: 111.
##
## stat -> REPEAT . block UNTIL exp [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## REPEAT 
##

Esperava um bloco de comandos.

programa: RETURN END 
##
## Ends in an error in state: 225.
##
## programa -> block . EOF [ # ]
##
## The known suffix of the stack is as follows:
## block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Nao foi encontrado o "eof".

programa: RETURN TRUE AND TRUE TRUE 
##
## Ends in an error in state: 84.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp AND exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp AND exp 
##

Esperava um operador.

programa: RETURN TRUE AND WRITE 
##
## Ends in an error in state: 83.
##
## exp -> exp AND . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp AND 
##

Esperava uma expressão.

programa: RETURN TRUE DIFERENTE TRUE TRUE 
##
## Ends in an error in state: 82.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp DIFERENTE exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp DIFERENTE exp 
##

Esperava um operador.

programa: RETURN TRUE DIFERENTE WRITE 
##
## Ends in an error in state: 81.
##
## exp -> exp DIFERENTE . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp DIFERENTE 
##

Esperava uma expressão.

programa: RETURN TRUE DIV WRITE 
##
## Ends in an error in state: 67.
##
## exp -> exp DIV . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp DIV 
##

Esperava uma expressão.

programa: RETURN TRUE DO 
##
## Ends in an error in state: 177.
##
## retstat -> RETURN option(explist) . option(PONTOVIRG) [ UNTIL EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN option(explist) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 159, spurious reduction of production list(virgula_exp_rule) -> 
## In state 164, spurious reduction of production explist -> exp list(virgula_exp_rule) 
## In state 180, spurious reduction of production option(explist) -> explist 
##

Esperava um ";".

programa: RETURN TRUE IGUAL TRUE TRUE 
##
## Ends in an error in state: 80.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp IGUAL exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp IGUAL exp 
##

Esperava um operador.

programa: RETURN TRUE IGUAL WRITE 
##
## Ends in an error in state: 79.
##
## exp -> exp IGUAL . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp IGUAL 
##

Esperava uma expressão.

programa: RETURN TRUE MAIOR TRUE TRUE 
##
## Ends in an error in state: 78.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp MAIOR exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MAIOR exp 
##

Esperava um operador.

programa: RETURN TRUE MAIOR WRITE 
##
## Ends in an error in state: 77.
##
## exp -> exp MAIOR . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MAIOR 
##

Esperava uma expressão.

programa: RETURN TRUE MAIORIGUAL TRUE TRUE 
##
## Ends in an error in state: 76.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp MAIORIGUAL exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MAIORIGUAL exp 
##

Esperava um operador.

programa: RETURN TRUE MAIORIGUAL WRITE 
##
## Ends in an error in state: 75.
##
## exp -> exp MAIORIGUAL . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MAIORIGUAL 
##

Esperava uma expressão.

programa: RETURN TRUE MAIS TRUE TRUE 
##
## Ends in an error in state: 72.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp MAIS exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MAIS exp 
##

Esperava um operador.

programa: RETURN TRUE MAIS WRITE 
##
## Ends in an error in state: 71.
##
## exp -> exp MAIS . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MAIS 
##

Esperava uma expressão.

programa: RETURN TRUE MENOR TRUE TRUE 
##
## Ends in an error in state: 74.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp MENOR exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MENOR exp 
##

Esperava um operador.

programa: RETURN TRUE MENOR WRITE 
##
## Ends in an error in state: 73.
##
## exp -> exp MENOR . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MENOR 
##

Esperava uma expressão.

programa: RETURN TRUE MENORIGUAL TRUE TRUE 
##
## Ends in an error in state: 70.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp MENORIGUAL exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MENORIGUAL exp 
##

Esperava um operador.

programa: RETURN TRUE MENORIGUAL WRITE 
##
## Ends in an error in state: 69.
##
## exp -> exp MENORIGUAL . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MENORIGUAL 
##

Esperava uma expressão.

programa: RETURN TRUE MENOS TRUE TRUE 
##
## Ends in an error in state: 66.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp MENOS exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MENOS exp 
##

Esperava um operador.

programa: RETURN TRUE MENOS WRITE 
##
## Ends in an error in state: 65.
##
## exp -> exp MENOS . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MENOS 
##

Esperava uma expressão.

programa: RETURN TRUE MOD WRITE 
##
## Ends in an error in state: 63.
##
## exp -> exp MOD . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MOD 
##

Esperava uma expressão.

programa: RETURN TRUE MULT WRITE 
##
## Ends in an error in state: 60.
##
## exp -> exp MULT . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp MULT 
##

Esperava uma expressão.

programa: RETURN TRUE OR TRUE TRUE 
##
## Ends in an error in state: 59.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp OR exp . [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp OR exp 
##

Esperava um operador.

programa: RETURN TRUE OR WRITE 
##
## Ends in an error in state: 58.
##
## exp -> exp OR . exp [ WRITE WHILE VIRGULA UNTIL THEN RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR FCOLCHETE FCHAVES EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
##
## The known suffix of the stack is as follows:
## exp OR 
##

Esperava uma expressão.

programa: RETURN TRUE TRUE 
##
## Ends in an error in state: 159.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## explist -> exp . list(virgula_exp_rule) [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## exp 
##

Esperava um operador.

programa: RETURN TRUE VIRGULA TRUE TRUE 
##
## Ends in an error in state: 161.
##
## exp -> exp . MAIS exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOS exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MULT exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIV exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MOD exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENOR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MENORIGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIOR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . MAIORIGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . IGUAL exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . DIFERENTE exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . AND exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## exp -> exp . OR exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR LOCAL IGUAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO DIV DIFERENTE APARENT AND ]
## virgula_exp_rule -> VIRGULA exp . [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA exp 
##

Esperava um operador.

programa: RETURN TRUE VIRGULA WRITE 
##
## Ends in an error in state: 160.
##
## virgula_exp_rule -> VIRGULA . exp [ WRITE WHILE VIRGULA UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FPARENT FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## VIRGULA 
##

Esperava uma expressão.

programa: RETURN WRITE 
##
## Ends in an error in state: 176.
##
## retstat -> RETURN . option(explist) option(PONTOVIRG) [ UNTIL EOF END ELSEIF ELSE ]
##
## The known suffix of the stack is as follows:
## RETURN 
##

Esperava uma expressão.

programa: VIRGULA 
##
## Ends in an error in state: 0.
##
## programa' -> . programa [ # ]
##
## The known suffix of the stack is as follows:
## 
##

Erro no inicio do programa.

programa: WHILE TRUE DO RETURN ELSEIF 
##
## Ends in an error in state: 213.
##
## stat -> WHILE exp DO block . END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## WHILE exp DO block 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 176, spurious reduction of production option(explist) -> 
## In state 177, spurious reduction of production option(PONTOVIRG) -> 
## In state 179, spurious reduction of production retstat -> RETURN option(explist) option(PONTOVIRG) 
## In state 181, spurious reduction of production option(retstat) -> retstat 
## In state 182, spurious reduction of production block -> list(stat) option(retstat) 
##

Esperava a palavra reservada "end".

programa: WHILE TRUE DO VIRGULA 
##
## Ends in an error in state: 110.
##
## stat -> WHILE exp DO . block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## WHILE exp DO 
##

Esperava um bloco de comandos.

programa: WHILE TRUE WRITE 
##
## Ends in an error in state: 109.
##
## exp -> exp . MAIS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENOS exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MULT exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . DIV exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MOD exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MENORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MAIOR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . MAIORIGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . IGUAL exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . DIFERENTE exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . AND exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## exp -> exp . OR exp [ OR MULT MOD MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL DO DIV DIFERENTE AND ]
## stat -> WHILE exp . DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## WHILE exp 
##

Esperava: palavra reservada "do" ou operador.

programa: WHILE WRITE 
##
## Ends in an error in state: 39.
##
## stat -> WHILE . exp DO block END [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

Esperava uma expressão.

programa: WRITE WRITE 
##
## Ends in an error in state: 1.
##
## stat -> WRITE . args [ WRITE WHILE UNTIL RETURN REPEAT PONTOVIRG LOCAL IF ID FUNCTION FOR EOF END ELSEIF ELSE DO APARENT ]
##
## The known suffix of the stack is as follows:
## WRITE 
##

Espera algum agrgumento valido em "write".

