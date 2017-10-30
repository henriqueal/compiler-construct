programa: FUNCAO ID APAR FPAR DPTOS BOOLEANO INICIO FIM WHILE 
##
## Ends in an error in state: 160.
##
## list(declaracao_de_funcao) -> declaracao_de_funcao . list(declaracao_de_funcao) [ INICIO ]
##
## The known suffix of the stack is as follows:
## declaracao_de_funcao 
##

Erro na declaracao de funcao.

programa: FUNCAO ID APAR FPAR DPTOS INTEIRO ID DPTOS BOOLEANO FUNCAO 
##
## Ends in an error in state: 47.
##
## declaracao_de_funcao -> FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) . INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 153, spurious reduction of production list(declaracao_de_variavel) -> 
## In state 154, spurious reduction of production list(declaracao_de_variavel) -> declaracao_de_variavel list(declaracao_de_variavel) 
##

Esperava a palavra reservada "begin".

programa: FUNCAO ID APAR FPAR DPTOS INTEIRO INICIO VIRG 
##
## Ends in an error in state: 48.
##
## declaracao_de_funcao -> FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) INICIO . list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) INICIO 
##

Esperava um comando valido.

programa: FUNCAO ID APAR FPAR DPTOS INTEIRO WHILE 
##
## Ends in an error in state: 46.
##
## declaracao_de_funcao -> FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo . list(declaracao_de_variavel) INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo 
##

Esperava a palavra reservada "begin" antes de um comndo.

programa: FUNCAO ID APAR FPAR DPTOS WHILE 
##
## Ends in an error in state: 45.
##
## declaracao_de_funcao -> FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS . tipo list(declaracao_de_variavel) INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS 
##

Esperava o tipo de retorno da funcao.

programa: FUNCAO ID APAR FPAR WHILE 
##
## Ends in an error in state: 44.
##
## declaracao_de_funcao -> FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR . DPTOS tipo list(declaracao_de_variavel) INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR 
##

Esperava ":" antes do tipo de retorno.

programa: FUNCAO ID APAR ID DPTOS BOOLEANO VIRG WHILE 
##
## Ends in an error in state: 41.
##
## separated_nonempty_list(VIRG,parametro) -> parametro VIRG . separated_nonempty_list(VIRG,parametro) [ FPAR ]
##
## The known suffix of the stack is as follows:
## parametro VIRG 
##

Esperava um parametro valido.

programa: FUNCAO ID APAR ID DPTOS BOOLEANO WHILE 
##
## Ends in an error in state: 40.
##
## separated_nonempty_list(VIRG,parametro) -> parametro . [ FPAR ]
## separated_nonempty_list(VIRG,parametro) -> parametro . VIRG separated_nonempty_list(VIRG,parametro) [ FPAR ]
##
## The known suffix of the stack is as follows:
## parametro 
##

Esperava um ")" ou ",".

programa: FUNCAO ID APAR ID DPTOS WHILE 
##
## Ends in an error in state: 37.
##
## parametro -> ID DPTOS . tipo [ VIRG FPAR ]
##
## The known suffix of the stack is as follows:
## ID DPTOS 
##

Esperava o tipo da variavel.

programa: FUNCAO ID APAR ID WHILE 
##
## Ends in an error in state: 36.
##
## parametro -> ID . DPTOS tipo [ VIRG FPAR ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava um ":"

programa: FUNCAO ID APAR WHILE 
##
## Ends in an error in state: 35.
##
## declaracao_de_funcao -> FUNCAO ID APAR . loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID APAR 
##

Esperava um parametro valido.

programa: FUNCAO ID WHILE 
##
## Ends in an error in state: 34.
##
## declaracao_de_funcao -> FUNCAO ID . APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO ID 
##

Esperava um "(".

programa: FUNCAO WHILE 
##
## Ends in an error in state: 33.
##
## declaracao_de_funcao -> FUNCAO . ID APAR loption(separated_nonempty_list(VIRG,parametro)) FPAR DPTOS tipo list(declaracao_de_variavel) INICIO list(comando) FIM [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## FUNCAO 
##

Esperava o nome da funcao.

programa: ID DPTOS ARRANJO ACOL INT PPTO INT FCOL DE WHILE 
##
## Ends in an error in state: 20.
##
## tipo_arranjo -> ARRANJO ACOL limites FCOL DE . tipo [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## ARRANJO ACOL limites FCOL DE 
##

Esperava o tipo do arranjo.

programa: ID DPTOS ARRANJO ACOL INT PPTO INT FCOL WHILE 
##
## Ends in an error in state: 19.
##
## tipo_arranjo -> ARRANJO ACOL limites FCOL . DE tipo [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## ARRANJO ACOL limites FCOL 
##

Esperava a palavra reservada "de".

programa: ID DPTOS ARRANJO ACOL INT PPTO INT WHILE 
##
## Ends in an error in state: 18.
##
## tipo_arranjo -> ARRANJO ACOL limites . FCOL DE tipo [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## ARRANJO ACOL limites 
##

Esperava um "]".

programa: ID DPTOS ARRANJO ACOL INT PPTO WHILE 
##
## Ends in an error in state: 16.
##
## limites -> INT PPTO . INT [ FCOL ]
##
## The known suffix of the stack is as follows:
## INT PPTO 
##

Esperava um inteiro.

programa: ID DPTOS ARRANJO ACOL INT WHILE 
##
## Ends in an error in state: 15.
##
## limites -> INT . PPTO INT [ FCOL ]
##
## The known suffix of the stack is as follows:
## INT 
##

Esprava ".."

programa: ID DPTOS ARRANJO ACOL WHILE 
##
## Ends in an error in state: 14.
##
## tipo_arranjo -> ARRANJO ACOL . limites FCOL DE tipo [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## ARRANJO ACOL 
##

Esperava um limite valido.

programa: ID DPTOS ARRANJO WHILE 
##
## Ends in an error in state: 13.
##
## tipo_arranjo -> ARRANJO . ACOL limites FCOL DE tipo [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## ARRANJO 
##

Esprava um "[".

programa: ID DPTOS BOOLEANO WHILE 
##
## Ends in an error in state: 153.
##
## list(declaracao_de_variavel) -> declaracao_de_variavel . list(declaracao_de_variavel) [ INICIO FUNCAO ]
##
## The known suffix of the stack is as follows:
## declaracao_de_variavel 
##

Esperava um declaracao de variavel valida.

programa: ID DPTOS REGISTRO ID DPTOS BOOLEANO FIM WHILE 
##
## Ends in an error in state: 28.
##
## tipo_registro -> REGISTRO nonempty_list(__anonymous_0) FIM . REGISTRO [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## REGISTRO nonempty_list(__anonymous_0) FIM 
##

Esperava um registro valido.

programa: ID DPTOS REGISTRO ID DPTOS INTEIRO WHILE 
##
## Ends in an error in state: 25.
##
## nonempty_list(__anonymous_0) -> ID DPTOS tipo . [ FIM ]
## nonempty_list(__anonymous_0) -> ID DPTOS tipo . nonempty_list(__anonymous_0) [ FIM ]
##
## The known suffix of the stack is as follows:
## ID DPTOS tipo 
##

Esperava a palavra reservada "end".

programa: ID DPTOS REGISTRO ID DPTOS WHILE 
##
## Ends in an error in state: 8.
##
## nonempty_list(__anonymous_0) -> ID DPTOS . tipo [ FIM ]
## nonempty_list(__anonymous_0) -> ID DPTOS . tipo nonempty_list(__anonymous_0) [ FIM ]
##
## The known suffix of the stack is as follows:
## ID DPTOS 
##

Esperava um tipo.

programa: ID DPTOS REGISTRO ID WHILE 
##
## Ends in an error in state: 7.
##
## nonempty_list(__anonymous_0) -> ID . DPTOS tipo [ FIM ]
## nonempty_list(__anonymous_0) -> ID . DPTOS tipo nonempty_list(__anonymous_0) [ FIM ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava ":"

programa: ID DPTOS REGISTRO WHILE 
##
## Ends in an error in state: 6.
##
## tipo_registro -> REGISTRO . nonempty_list(__anonymous_0) FIM REGISTRO [ VIRG INICIO ID FUNCAO FPAR FIM ]
##
## The known suffix of the stack is as follows:
## REGISTRO 
##

Esperava um comando valido depois de "registro".

programa: ID DPTOS WHILE 
##
## Ends in an error in state: 5.
##
## declaracao_de_variavel -> separated_nonempty_list(VIRG,ID) DPTOS . tipo [ INICIO ID FUNCAO ]
##
## The known suffix of the stack is as follows:
## separated_nonempty_list(VIRG,ID) DPTOS 
##

Esperava um tipo.

programa: ID VIRG WHILE 
##
## Ends in an error in state: 2.
##
## separated_nonempty_list(VIRG,ID) -> ID VIRG . separated_nonempty_list(VIRG,ID) [ DPTOS ]
##
## The known suffix of the stack is as follows:
## ID VIRG 
##

Esperava um identificador.

programa: ID WHILE 
##
## Ends in an error in state: 1.
##
## separated_nonempty_list(VIRG,ID) -> ID . [ DPTOS ]
## separated_nonempty_list(VIRG,ID) -> ID . VIRG separated_nonempty_list(VIRG,ID) [ DPTOS ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava ":" ou ",".

programa: INICIO APAR STRING WHILE 
##
## Ends in an error in state: 91.
##
## expressao -> expressao . MAIS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> APAR expressao . FPAR [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## APAR expressao 
##

Esperava um operador ou ")".

programa: INICIO APAR WHILE 
##
## Ends in an error in state: 57.
##
## expressao -> APAR . expressao FPAR [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## APAR 
##

Esperava uma expressao valida.

programa: INICIO FIM WHILE 
##
## Ends in an error in state: 158.
##
## programa -> list(declaracao_de_variavel) list(declaracao_de_funcao) INICIO list(comando) FIM . EOF [ # ]
##
## The known suffix of the stack is as follows:
## list(declaracao_de_variavel) list(declaracao_de_funcao) INICIO list(comando) FIM 
##

Esperava o fim do arquivo.

programa: INICIO FOR STRING VIRG STRING VIRG STRING PASSO INT DO VIRG 
##
## Ends in an error in state: 123.
##
## comando_para -> FOR expressao VIRG expressao VIRG expressao passo DO . list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## FOR expressao VIRG expressao VIRG expressao passo DO 
##

Esoerava um bloco de comando apos o "do".

programa: INICIO FOR STRING VIRG STRING VIRG STRING PASSO INT WHILE 
##
## Ends in an error in state: 122.
##
## comando_para -> FOR expressao VIRG expressao VIRG expressao passo . DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## FOR expressao VIRG expressao VIRG expressao passo 
##

Esperava a palavra reservada "do".

programa: INICIO FOR STRING VIRG STRING VIRG STRING PASSO WHILE 
##
## Ends in an error in state: 120.
##
## passo -> PASSO . INT [ DO ]
##
## The known suffix of the stack is as follows:
## PASSO 
##

Esperava um inteiro.

programa: INICIO FOR STRING VIRG STRING VIRG STRING WHILE 
##
## Ends in an error in state: 119.
##
## comando_para -> FOR expressao VIRG expressao VIRG expressao . passo DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
##
## The known suffix of the stack is as follows:
## FOR expressao VIRG expressao VIRG expressao 
##

Esperava um passo ou um operador. 

programa: INICIO FOR STRING VIRG STRING VIRG WHILE 
##
## Ends in an error in state: 118.
##
## comando_para -> FOR expressao VIRG expressao VIRG . expressao passo DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## FOR expressao VIRG expressao VIRG 
##

Esperava uma expressao valida.

programa: INICIO FOR STRING VIRG STRING WHILE 
##
## Ends in an error in state: 117.
##
## comando_para -> FOR expressao VIRG expressao . VIRG expressao passo DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
##
## The known suffix of the stack is as follows:
## FOR expressao VIRG expressao 
##

Esperava "," ou um operador.

programa: INICIO FOR STRING VIRG WHILE 
##
## Ends in an error in state: 116.
##
## comando_para -> FOR expressao VIRG . expressao VIRG expressao passo DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## FOR expressao VIRG 
##

Esperava uma expressao valida.

programa: INICIO FOR STRING WHILE 
##
## Ends in an error in state: 115.
##
## comando_para -> FOR expressao . VIRG expressao VIRG expressao passo DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ELOG DIV DIFER CONCAT ]
##
## The known suffix of the stack is as follows:
## FOR expressao 
##

Esperava "," ou um operador.

programa: INICIO FOR WHILE 
##
## Ends in an error in state: 114.
##
## comando_para -> FOR . expressao VIRG expressao VIRG expressao passo DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## FOR 
##

Esperava uma expressao valida.

programa: INICIO ID ACOL STRING WHILE 
##
## Ends in an error in state: 62.
##
## expressao -> expressao . MAIS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FCOL ELOG DIV DIFER CONCAT ]
## variavel -> variavel ACOL expressao . FCOL [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PTO PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ACOL ]
##
## The known suffix of the stack is as follows:
## variavel ACOL expressao 
##

Esperava "]" ou um operador.

programa: INICIO ID ACOL WHILE 
##
## Ends in an error in state: 61.
##
## variavel -> variavel ACOL . expressao FCOL [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PTO PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ACOL ]
##
## The known suffix of the stack is as follows:
## variavel ACOL 
##

Esperava uma expressao valida.

programa: INICIO ID APAR FPAR REGISTRO 
##
## Ends in an error in state: 141.
##
## comando_chamada -> chamada . [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> chamada . [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
##
## The known suffix of the stack is as follows:
## chamada 
##

Esperava uma chamada valida.

programa: INICIO ID APAR STRING ENTRADA 
##
## Ends in an error in state: 94.
##
## chamada -> ID APAR loption(separated_nonempty_list(VIRG,expressao)) . FPAR [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## ID APAR loption(separated_nonempty_list(VIRG,expressao)) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 96, spurious reduction of production separated_nonempty_list(VIRG,expressao) -> expressao 
## In state 93, spurious reduction of production loption(separated_nonempty_list(VIRG,expressao)) -> separated_nonempty_list(VIRG,expressao) 
##

Esperava um ")".

programa: INICIO ID APAR STRING WHILE 
##
## Ends in an error in state: 96.
##
## expressao -> expressao . MAIS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ENTRADA ELOG DIV DIFER CONCAT ]
## separated_nonempty_list(VIRG,expressao) -> expressao . [ FPAR ENTRADA ]
## separated_nonempty_list(VIRG,expressao) -> expressao . VIRG separated_nonempty_list(VIRG,expressao) [ FPAR ENTRADA ]
##
## The known suffix of the stack is as follows:
## expressao 
##

Esperava um ")" ou um operador ou ",".

programa: INICIO ID APAR WHILE 
##
## Ends in an error in state: 55.
##
## chamada -> ID APAR . loption(separated_nonempty_list(VIRG,expressao)) FPAR [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## ID APAR 
##

Esperava uma expressao valida.

programa: INICIO ID PTO ID REGISTRO 
##
## Ends in an error in state: 58.
##
## expressao -> variavel . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## variavel -> variavel . PTO ID [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PTO PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ACOL ]
## variavel -> variavel . ACOL expressao FCOL [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PTO PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ACOL ]
##
## The known suffix of the stack is as follows:
## variavel 
##

Esperava "[" ou um "."

programa: INICIO ID PTO WHILE 
##
## Ends in an error in state: 59.
##
## variavel -> variavel PTO . ID [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PTO PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ACOL ]
##
## The known suffix of the stack is as follows:
## variavel PTO 
##

Esperava um identificador.

programa: INICIO ID REGISTRO 
##
## Ends in an error in state: 54.
##
## chamada -> ID . APAR loption(separated_nonempty_list(VIRG,expressao)) FPAR [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## variavel -> ID . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PTO PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ACOL ]
##
## The known suffix of the stack is as follows:
## ID 
##

Esperava "(" ou ":" ou ",".

programa: INICIO RETORNE SENAO 
##
## Ends in an error in state: 139.
##
## list(comando) -> comando . list(comando) [ FIM ]
##
## The known suffix of the stack is as follows:
## comando 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 111, spurious reduction of production option(expressao) -> 
## In state 112, spurious reduction of production comando_retorno -> RETORNE option(expressao) 
## In state 133, spurious reduction of production comando -> comando_retorno 
##

Esperava um comando valido.

programa: INICIO RETORNE STRING VIRG 
##
## Ends in an error in state: 113.
##
## expressao -> expressao . MAIS expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MENOS expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MULT expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . DIV expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MENOR expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . DIFER expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . ELOG expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . OULOG expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## option(expressao) -> expressao . [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## expressao 
##

Esperava uma expressao valida ou um operador.

programa: INICIO RETORNE VIRG 
##
## Ends in an error in state: 111.
##
## comando_retorno -> RETORNE . option(expressao) [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## RETORNE 
##

Esperava uma expressao valida.

programa: INICIO SAIDA APAR STRING ENTRADA 
##
## Ends in an error in state: 109.
##
## comando_saida -> SAIDA APAR separated_nonempty_list(VIRG,expressao) . FPAR [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SAIDA APAR separated_nonempty_list(VIRG,expressao) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 96, spurious reduction of production separated_nonempty_list(VIRG,expressao) -> expressao 
##

Esperava um ")".

programa: INICIO SAIDA APAR WHILE 
##
## Ends in an error in state: 108.
##
## comando_saida -> SAIDA APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SAIDA APAR 
##

Esperava uma expressao valida.

programa: INICIO SAIDA WHILE 
##
## Ends in an error in state: 107.
##
## comando_saida -> SAIDA . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SAIDA 
##

Esperava um "(".

programa: INICIO SE APAR STRING FPAR ENTAO RETORNE SENAO RETORNE SENAO 
##
## Ends in an error in state: 147.
##
## comando_se -> SE APAR expressao FPAR ENTAO nonempty_list(comando) option(__anonymous_1) . FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SE APAR expressao FPAR ENTAO nonempty_list(comando) option(__anonymous_1) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 111, spurious reduction of production option(expressao) -> 
## In state 112, spurious reduction of production comando_retorno -> RETORNE option(expressao) 
## In state 133, spurious reduction of production comando -> comando_retorno 
## In state 145, spurious reduction of production nonempty_list(comando) -> comando 
## In state 144, spurious reduction of production option(__anonymous_1) -> SENAO nonempty_list(comando) 
##

Esperava a palavra reservada "end".

programa: INICIO SE APAR STRING FPAR ENTAO RETORNE SENAO VIRG 
##
## Ends in an error in state: 143.
##
## option(__anonymous_1) -> SENAO . nonempty_list(comando) [ FIM ]
##
## The known suffix of the stack is as follows:
## SENAO 
##

Esperava um comando valido.

programa: INICIO SE APAR STRING FPAR ENTAO STRING ENTRADA FCOL 
##
## Ends in an error in state: 145.
##
## nonempty_list(comando) -> comando . [ SENAO FIM ]
## nonempty_list(comando) -> comando . nonempty_list(comando) [ SENAO FIM ]
##
## The known suffix of the stack is as follows:
## comando 
##

Esperava a palavra reservada "end" ou "else".

programa: INICIO SE APAR STRING FPAR ENTAO VIRG 
##
## Ends in an error in state: 106.
##
## comando_se -> SE APAR expressao FPAR ENTAO . nonempty_list(comando) option(__anonymous_1) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SE APAR expressao FPAR ENTAO 
##

Esperava um comando valido.

programa: INICIO SE APAR STRING FPAR WHILE 
##
## Ends in an error in state: 105.
##
## comando_se -> SE APAR expressao FPAR . ENTAO nonempty_list(comando) option(__anonymous_1) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SE APAR expressao FPAR 
##

Esperava a palavra reservada "then".

programa: INICIO SE APAR STRING WHILE 
##
## Ends in an error in state: 104.
##
## comando_se -> SE APAR expressao . FPAR ENTAO nonempty_list(comando) option(__anonymous_1) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
##
## The known suffix of the stack is as follows:
## SE APAR expressao 
##

Esperava um ")" ou um operador.

programa: INICIO SE APAR WHILE 
##
## Ends in an error in state: 103.
##
## comando_se -> SE APAR . expressao FPAR ENTAO nonempty_list(comando) option(__anonymous_1) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SE APAR 
##

Esperava uma espressao valida.

programa: INICIO SE WHILE 
##
## Ends in an error in state: 102.
##
## comando_se -> SE . APAR expressao FPAR ENTAO nonempty_list(comando) option(__anonymous_1) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## SE 
##

Esperava um "(".

programa: INICIO STRING ATRIB STRING VIRG 
##
## Ends in an error in state: 130.
##
## comando_atribuicao -> expressao ATRIB expressao . [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MENOS expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MULT expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . DIV expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MENOR expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . DIFER expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . ELOG expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . OULOG expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FOR FIM ELOG DIV DIFER CONCAT BOOL APAR ]
##
## The known suffix of the stack is as follows:
## expressao ATRIB expressao 
##

Esperava um operador.

programa: INICIO STRING ATRIB WHILE 
##
## Ends in an error in state: 129.
##
## comando_atribuicao -> expressao ATRIB . expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## expressao ATRIB 
##

Esperava uma expressao valida.

programa: INICIO STRING CONCAT STRING REGISTRO 
##
## Ends in an error in state: 77.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao CONCAT expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao CONCAT expressao 
##

Esperava um operador.

programa: INICIO STRING CONCAT WHILE 
##
## Ends in an error in state: 76.
##
## expressao -> expressao CONCAT . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao CONCAT 
##

Esperava uma expressao valida.

programa: INICIO STRING DIFER STRING REGISTRO 
##
## Ends in an error in state: 89.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao DIFER expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao DIFER expressao 
##

Esperava um operador.

programa: INICIO STRING DIFER WHILE 
##
## Ends in an error in state: 88.
##
## expressao -> expressao DIFER . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao DIFER 
##

Esperava uma expressao valida.

programa: INICIO STRING DIV WHILE 
##
## Ends in an error in state: 70.
##
## expressao -> expressao DIV . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao DIV 
##

Esperava uma expressao valida.

programa: INICIO STRING ELOG STRING REGISTRO 
##
## Ends in an error in state: 87.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao ELOG expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao ELOG expressao 
##

Esperava um operador.

programa: INICIO STRING ELOG WHILE 
##
## Ends in an error in state: 86.
##
## expressao -> expressao ELOG . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao ELOG 
##

Esperava uma expressao valida.

programa: INICIO STRING IGUAL STRING REGISTRO 
##
## Ends in an error in state: 85.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao IGUAL expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao IGUAL expressao 
##

Esperava um operador.

programa: INICIO STRING IGUAL WHILE 
##
## Ends in an error in state: 84.
##
## expressao -> expressao IGUAL . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao IGUAL 
##

Esperava uma expressao valida.

programa: INICIO STRING MAIOR STRING REGISTRO 
##
## Ends in an error in state: 83.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao MAIOR expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MAIOR expressao 
##

Esperava um operador.

programa: INICIO STRING MAIOR WHILE 
##
## Ends in an error in state: 82.
##
## expressao -> expressao MAIOR . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MAIOR 
##

Esperava uma expressao valida.

programa: INICIO STRING MAIORIGUAL STRING REGISTRO 
##
## Ends in an error in state: 81.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao MAIORIGUAL expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MAIORIGUAL expressao 
##

Esperava um operador.

programa: INICIO STRING MAIORIGUAL WHILE 
##
## Ends in an error in state: 80.
##
## expressao -> expressao MAIORIGUAL . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MAIORIGUAL 
##

Esperava uma expressao valida.

programa: INICIO STRING MAIS STRING REGISTRO 
##
## Ends in an error in state: 75.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao MAIS expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MAIS expressao 
##

Esperava um operador.

programa: INICIO STRING MAIS WHILE 
##
## Ends in an error in state: 74.
##
## expressao -> expressao MAIS . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MAIS 
##

Esperava uma expressao valida.

programa: INICIO STRING MENOR STRING REGISTRO 
##
## Ends in an error in state: 79.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao MENOR expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MENOR expressao 
##

Esperava um operador.

programa: INICIO STRING MENOR WHILE 
##
## Ends in an error in state: 78.
##
## expressao -> expressao MENOR . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MENOR 
##

Esperava uma expressao valida.

programa: INICIO STRING MENORIGUAL STRING REGISTRO 
##
## Ends in an error in state: 73.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao MENORIGUAL expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MENORIGUAL expressao 
##

Esperava um operador.

programa: INICIO STRING MENORIGUAL WHILE 
##
## Ends in an error in state: 72.
##
## expressao -> expressao MENORIGUAL . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MENORIGUAL 
##

Esperava uma expressao valida.

programa: INICIO STRING MENOS STRING REGISTRO 
##
## Ends in an error in state: 69.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao MENOS expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MENOS expressao 
##

Esperava um operador.

programa: INICIO STRING MENOS WHILE 
##
## Ends in an error in state: 68.
##
## expressao -> expressao MENOS . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MENOS 
##

Esperava uma expressao valida.

programa: INICIO STRING MULT WHILE 
##
## Ends in an error in state: 65.
##
## expressao -> expressao MULT . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao MULT 
##

Esperava uma expressao valida.

programa: INICIO STRING OULOG STRING REGISTRO 
##
## Ends in an error in state: 64.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MULT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIV expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MENORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . IGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIOR expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . MAIORIGUAL expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . ELOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . OULOG expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao OULOG expressao . [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
## expressao -> expressao . CONCAT expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao OULOG expressao 
##

Esperava um operador.

programa: INICIO STRING OULOG WHILE 
##
## Ends in an error in state: 63.
##
## expressao -> expressao OULOG . expressao [ WHILE VIRG STRING SENAO SE SAIDA RETORNE PFLOAT PASSO OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR INT IGUAL ID FPAR FOR FIM FCOL ENTRADA ELOG DIV DIFER CONCAT BOOL ATRIB APAR ]
##
## The known suffix of the stack is as follows:
## expressao OULOG 
##

Esperava uma expressao valida.

programa: INICIO STRING VIRG BOOL FPAR 
##
## Ends in an error in state: 124.
##
## comando_entrada -> separated_nonempty_list(VIRG,expressao) . ENTRADA [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## separated_nonempty_list(VIRG,expressao) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 96, spurious reduction of production separated_nonempty_list(VIRG,expressao) -> expressao 
## In state 98, spurious reduction of production separated_nonempty_list(VIRG,expressao) -> expressao VIRG separated_nonempty_list(VIRG,expressao) 
##

Esperava uma entrada valida.

programa: INICIO STRING VIRG WHILE 
##
## Ends in an error in state: 97.
##
## separated_nonempty_list(VIRG,expressao) -> expressao VIRG . separated_nonempty_list(VIRG,expressao) [ FPAR ENTRADA ]
##
## The known suffix of the stack is as follows:
## expressao VIRG 
##

Esperava uma expressao.

programa: INICIO STRING WHILE 
##
## Ends in an error in state: 128.
##
## comando_atribuicao -> expressao . ATRIB expressao [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . MENOS expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . MULT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . DIV expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . MENOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . MENORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . IGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . DIFER expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . MAIOR expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . MAIORIGUAL expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . ELOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . OULOG expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## expressao -> expressao . CONCAT expressao [ VIRG OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL ENTRADA ELOG DIV DIFER CONCAT ATRIB ]
## separated_nonempty_list(VIRG,expressao) -> expressao . [ ENTRADA ]
## separated_nonempty_list(VIRG,expressao) -> expressao . VIRG separated_nonempty_list(VIRG,expressao) [ ENTRADA ]
##
## The known suffix of the stack is as follows:
## expressao 
##

Esperava um operador ou "=".

programa: INICIO VIRG 
##
## Ends in an error in state: 156.
##
## programa -> list(declaracao_de_variavel) list(declaracao_de_funcao) INICIO . list(comando) FIM EOF [ # ]
##
## The known suffix of the stack is as follows:
## list(declaracao_de_variavel) list(declaracao_de_funcao) INICIO 
##

Esperava um comando valido.

programa: INICIO WHILE APAR STRING FPAR DO VIRG 
##
## Ends in an error in state: 101.
##
## comando_enquanto -> WHILE APAR expressao FPAR DO . list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## WHILE APAR expressao FPAR DO 
##

Esperava um comando valido.

programa: INICIO WHILE APAR STRING FPAR WHILE 
##
## Ends in an error in state: 100.
##
## comando_enquanto -> WHILE APAR expressao FPAR . DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## WHILE APAR expressao FPAR 
##

Esperava a palavra reservada "do".

programa: INICIO WHILE APAR STRING WHILE 
##
## Ends in an error in state: 99.
##
## comando_enquanto -> WHILE APAR expressao . FPAR DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
## expressao -> expressao . MAIS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOS expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MULT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIV expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MENORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . IGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . DIFER expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIOR expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . MAIORIGUAL expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . ELOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . OULOG expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
## expressao -> expressao . CONCAT expressao [ OULOG MULT MENOS MENORIGUAL MENOR MAIS MAIORIGUAL MAIOR IGUAL FPAR ELOG DIV DIFER CONCAT ]
##
## The known suffix of the stack is as follows:
## WHILE APAR expressao 
##

Esperava um ")" ou um operador.

programa: INICIO WHILE APAR WHILE 
##
## Ends in an error in state: 50.
##
## comando_enquanto -> WHILE APAR . expressao FPAR DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## WHILE APAR 
##

Esperava uma expressao valida.

programa: INICIO WHILE WHILE 
##
## Ends in an error in state: 49.
##
## comando_enquanto -> WHILE . APAR expressao FPAR DO list(comando) FIM [ WHILE STRING SENAO SE SAIDA RETORNE PFLOAT INT ID FOR FIM BOOL APAR ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

Esperava um "(".

programa: WHILE 
##
## Ends in an error in state: 0.
##
## programa' -> . programa [ # ]
##
## The known suffix of the stack is as follows:
## 
##

Inicio invalido.

