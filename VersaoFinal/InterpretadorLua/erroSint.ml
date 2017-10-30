
(* This file was auto-generated based on "sintatico.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Inicio invalido.\n"
    | 49 ->
        "Esperava um \"(\".\n"
    | 50 ->
        "Esperava uma expressao valida.\n"
    | 99 ->
        "Esperava um \")\" ou um operador.\n"
    | 100 ->
        "Esperava a palavra reservada \"do\".\n"
    | 101 ->
        "Esperava um comando valido.\n"
    | 156 ->
        "Esperava um comando valido.\n"
    | 128 ->
        "Esperava um operador ou \"=\".\n"
    | 97 ->
        "Esperava uma expressao.\n"
    | 124 ->
        "Esperava uma entrada valida.\n"
    | 63 ->
        "Esperava uma expressao valida.\n"
    | 64 ->
        "Esperava um operador.\n"
    | 65 ->
        "Esperava uma expressao valida.\n"
    | 68 ->
        "Esperava uma expressao valida.\n"
    | 69 ->
        "Esperava um operador.\n"
    | 72 ->
        "Esperava uma expressao valida.\n"
    | 73 ->
        "Esperava um operador.\n"
    | 78 ->
        "Esperava uma expressao valida.\n"
    | 79 ->
        "Esperava um operador.\n"
    | 74 ->
        "Esperava uma expressao valida.\n"
    | 75 ->
        "Esperava um operador.\n"
    | 80 ->
        "Esperava uma expressao valida.\n"
    | 81 ->
        "Esperava um operador.\n"
    | 82 ->
        "Esperava uma expressao valida.\n"
    | 83 ->
        "Esperava um operador.\n"
    | 84 ->
        "Esperava uma expressao valida.\n"
    | 85 ->
        "Esperava um operador.\n"
    | 86 ->
        "Esperava uma expressao valida.\n"
    | 87 ->
        "Esperava um operador.\n"
    | 70 ->
        "Esperava uma expressao valida.\n"
    | 88 ->
        "Esperava uma expressao valida.\n"
    | 89 ->
        "Esperava um operador.\n"
    | 76 ->
        "Esperava uma expressao valida.\n"
    | 77 ->
        "Esperava um operador.\n"
    | 129 ->
        "Esperava uma expressao valida.\n"
    | 130 ->
        "Esperava um operador.\n"
    | 102 ->
        "Esperava um \"(\".\n"
    | 103 ->
        "Esperava uma espressao valida.\n"
    | 104 ->
        "Esperava um \")\" ou um operador.\n"
    | 105 ->
        "Esperava a palavra reservada \"then\".\n"
    | 106 ->
        "Esperava um comando valido.\n"
    | 145 ->
        "Esperava a palavra reservada \"end\" ou \"else\".\n"
    | 143 ->
        "Esperava um comando valido.\n"
    | 147 ->
        "Esperava a palavra reservada \"end\".\n"
    | 107 ->
        "Esperava um \"(\".\n"
    | 108 ->
        "Esperava uma expressao valida.\n"
    | 109 ->
        "Esperava um \")\".\n"
    | 111 ->
        "Esperava uma expressao valida.\n"
    | 113 ->
        "Esperava uma expressao valida ou um operador.\n"
    | 139 ->
        "Esperava um comando valido.\n"
    | 54 ->
        "Esperava \"(\" ou \":\" ou \",\".\n"
    | 59 ->
        "Esperava um identificador.\n"
    | 58 ->
        "Esperava \"[\" ou um \".\"\n"
    | 55 ->
        "Esperava uma expressao valida.\n"
    | 96 ->
        "Esperava um \")\" ou um operador ou \",\".\n"
    | 94 ->
        "Esperava um \")\".\n"
    | 141 ->
        "Esperava uma chamada valida.\n"
    | 61 ->
        "Esperava uma expressao valida.\n"
    | 62 ->
        "Esperava \"]\" ou um operador.\n"
    | 114 ->
        "Esperava uma expressao valida.\n"
    | 115 ->
        "Esperava \",\" ou um operador.\n"
    | 116 ->
        "Esperava uma expressao valida.\n"
    | 117 ->
        "Esperava \",\" ou um operador.\n"
    | 118 ->
        "Esperava uma expressao valida.\n"
    | 119 ->
        "Esperava um passo ou um operador. \n"
    | 120 ->
        "Esperava um inteiro.\n"
    | 122 ->
        "Esperava a palavra reservada \"do\".\n"
    | 123 ->
        "Esoerava um bloco de comando apos o \"do\".\n"
    | 158 ->
        "Esperava o fim do arquivo.\n"
    | 57 ->
        "Esperava uma expressao valida.\n"
    | 91 ->
        "Esperava um operador ou \")\".\n"
    | 1 ->
        "Esperava \":\" ou \",\".\n"
    | 2 ->
        "Esperava um identificador.\n"
    | 5 ->
        "Esperava um tipo.\n"
    | 6 ->
        "Esperava um comando valido depois de \"registro\".\n"
    | 7 ->
        "Esperava \":\"\n"
    | 8 ->
        "Esperava um tipo.\n"
    | 25 ->
        "Esperava a palavra reservada \"end\".\n"
    | 28 ->
        "Esperava um registro valido.\n"
    | 153 ->
        "Esperava um declaracao de variavel valida.\n"
    | 13 ->
        "Esprava um \"[\".\n"
    | 14 ->
        "Esperava um limite valido.\n"
    | 15 ->
        "Esprava \"..\"\n"
    | 16 ->
        "Esperava um inteiro.\n"
    | 18 ->
        "Esperava um \"]\".\n"
    | 19 ->
        "Esperava a palavra reservada \"de\".\n"
    | 20 ->
        "Esperava o tipo do arranjo.\n"
    | 33 ->
        "Esperava o nome da funcao.\n"
    | 34 ->
        "Esperava um \"(\".\n"
    | 35 ->
        "Esperava um parametro valido.\n"
    | 36 ->
        "Esperava um \":\"\n"
    | 37 ->
        "Esperava o tipo da variavel.\n"
    | 40 ->
        "Esperava um \")\" ou \",\".\n"
    | 41 ->
        "Esperava um parametro valido.\n"
    | 44 ->
        "Esperava \":\" antes do tipo de retorno.\n"
    | 45 ->
        "Esperava o tipo de retorno da funcao.\n"
    | 46 ->
        "Esperava a palavra reservada \"begin\" antes de um comndo.\n"
    | 48 ->
        "Esperava um comando valido.\n"
    | 47 ->
        "Esperava a palavra reservada \"begin\".\n"
    | 160 ->
        "Erro na declaracao de funcao.\n"
    | _ ->
        raise Not_found
