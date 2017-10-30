
(* This file was auto-generated based on "parser.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 1 ->
        "Esperava: expressao\n"
    | 202 ->
        "Esperava: operador binario e 'do'\n"
    | 203 ->
        "Esperava: bloco\n"
    | 204 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 0 ->
        "Esperava: expressao\n"
    | 161 ->
        "Esperava: variavel no \"return\"\n"
    | 100 ->
        "Esperava: expressao\n"
    | 101 ->
        "Esperava: operador binario \n"
    | 99 ->
        "Esperava: operador binario ou ','\n"
    | 70 ->
        "Esperava: expressao\n"
    | 71 ->
        "Esperava: operador binario ou '['\n"
    | 162 ->
        "Esperava: ';', end, eof, else, elseif\n"
    | 207 ->
        "Esperava: EOF\n"
    | 30 ->
        "Esperava: bloco\n"
    | 192 ->
        "Esperva: expressao no repeat\n"
    | 193 ->
        "Esperava operador binario ou '['\n"
    | 191 ->
        "Esperava: until\n"
    | 31 ->
        "Esperava: argumentos no print \n"
    | 33 ->
        "Esperava: ')' ou expressao\n"
    | 96 ->
        "Esperava: ')' ou \"\n"
    | 37 ->
        "Esperava: '{'\n"
    | 93 ->
        "Esperava: operador binario ou ','\n"
    | 91 ->
        "Esperava: campo de tabela\n"
    | 38 ->
        "Esperava: '=' ou ','\n"
    | 39 ->
        "Esperava: ',' ou valor para o identificador\n"
    | 74 ->
        "Esperava: operador binario, '[', ','\n"
    | 75 ->
        "Esperava: expressao\n"
    | 76 ->
        "Esperava: operador binario, ']'\n"
    | 77 ->
        "Esperava: '='\n"
    | 78 ->
        "Esperava: expressao\n"
    | 79 ->
        "Esperava: operador binario\n"
    | 156 ->
        "Esperava: lista(until, return, eof, end, elseif ou else)\n"
    | 107 ->
        "Esperava: nome\n"
    | 22 ->
        "Esperava: identificador\n"
    | 24 ->
        "Esperava: ','\n"
    | 21 ->
        "Esperava: lista(',')\n"
    | 108 ->
        "Esperava: '='\n"
    | 109 ->
        "Esperava: '[' ou '='\n"
    | 113 ->
        "Esperava: expressao\n"
    | 114 ->
        "Esperava: operador binario, then\n"
    | 115 ->
        "Esperava: elseif\n"
    | 178 ->
        "Esperava: elseif\n"
    | 179 ->
        "Esperava: expressao\n"
    | 180 ->
        "Esperava: then ou operador binario\n"
    | 181 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 189 ->
        "Esperava: lista\n"
    | 184 ->
        "Esperava: bloco\n"
    | 186 ->
        "Esperava: end\n"
    | 3 ->
        "Esperava: '('\n"
    | 4 ->
        "Esperava: io.read\n"
    | 5 ->
        "Esperava: '('\n"
    | 6 ->
        "Esperava: ')'\n"
    | 8 ->
        "Esperava: ')'\n"
    | 41 ->
        "Esperava: '[' ou '='\n"
    | 73 ->
        "Esperava: operador binario, '['\n"
    | 43 ->
        "Esperava: '[' ou '=', argumentos, ':', '[', '.'\n"
    | 18 ->
        "Esperava: corpo da funcao\n"
    | 19 ->
        "Esperava: ')'\n"
    | 28 ->
        "Esperava: ')'\n"
    | 196 ->
        "Esperava: ','\n"
    | 29 ->
        "Esperava: bloco\n"
    | 194 ->
        "Esperava: end\n"
    | 149 ->
        "Esperava: '[' ou '='\n"
    | 150 ->
        "Esperava: variavel\n"
    | 151 ->
        "Esperava: '[' ou '='\n"
    | 159 ->
        "Esperava: '[' ou '='\n"
    | 44 ->
        "Esperava: identificador\n"
    | 46 ->
        "Esperava: identificador\n"
    | 47 ->
        "Esperava: argumentos\n"
    | 147 ->
        "Esperava: lista de expressoes\n"
    | 50 ->
        "Esperava: expressao\n"
    | 53 ->
        "Esperava operador binario ou ']'\n"
    | 116 ->
        "Esperava: identificador\n"
    | 118 ->
        "Esperava: nome da funcao\n"
    | 119 ->
        "Esperava: lista\n"
    | 120 ->
        "Esperava identificador\n"
    | 122 ->
        "Esperava: lista\n"
    | 125 ->
        "Esperava: identificador\n"
    | 129 ->
        "Esperava: corpo de funcao\n"
    | 131 ->
        "Esperava: id ou namelist\n"
    | 132 ->
        "<YOUR SYNTAX ERROR MESSAGE HERE>\n"
    | 172 ->
        "Esperava: in\n"
    | 173 ->
        "Esperava: explist\n"
    | 174 ->
        "Esperava: do\n"
    | 175 ->
        "Esperava: bloco\n"
    | 176 ->
        "Esperava: end\n"
    | 133 ->
        "Esperava: expressao\n"
    | 134 ->
        "Esperava: operador binario ou ','\n"
    | 135 ->
        "Esperava: expressao\n"
    | 136 ->
        "Esperava: operador binario ou option\n"
    | 137 ->
        "Esperava: expressao\n"
    | 138 ->
        "Esperava: do ou operador binario \n"
    | 140 ->
        "Esperava: bloco\n"
    | 169 ->
        "Esperava: end\n"
    | 141 ->
        "Esperava: identificador\n"
    | 142 ->
        "Esperava: ::\n"
    | 144 ->
        "Esperava: bloco\n"
    | 167 ->
        "Esperava: end\n"
    | 36 ->
        "Esperava: express\195\163o\n"
    | 94 ->
        "Esperava: operador binario ou ')'\n"
    | 152 ->
        "Esperava: argumentos, doispontos, abrecolchete ou ponto\n"
    | _ ->
        raise Not_found
