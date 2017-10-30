
(* This file was auto-generated based on "sintatico.messages". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 0 ->
        "Estado 0: Esperava um programa (include/declaracao/funcao).\nEx:\n#include <stdio.h>\nint a;\nint main()\n{\n   return 0;\n}\n"
    | 10 ->
        "Estado 10: Esperava um identificador apos tipo.\nEx:\nint a;\n"
    | 11 ->
        "Estado 11: Esperava um ';' ou ',' apos identificador.\nEx:\nint a;\n"
    | 12 ->
        "Estado 12: Esperava um identificador apos ','.\nEx:\nint a, b;\n"
    | 13 ->
        "Estado 13: Esperava um ';' ou ',' apos identificador.\nEx:\nint a, b, c;\n"
    | 168 ->
        "Estado 168: Esperava uma funcao ou 'eof'.\nEx:\nint a;\nvoid func()\n{\n}\n"
    | 15 ->
        "Estado 15: Esperava um ')' ou tipo apos '('.\nEx:\nvoid func(int a)\n{\n}\n"
    | 16 ->
        "Estado 16: Esperava um identificador apos tipo.\nEx:\nvoid func(int a)\n{\n}\n"
    | 17 ->
        "Estado 17: Esperava um ')' ou ',' apos identificador.\nEx:\nvoid func(int a)\n{\n}\n"
    | 18 ->
        "Estado 18: Esperava um tipo apos ','.\nEx:\nvoid func(int a, int b)\n{\n}\n"
    | 22 ->
        "Estado 22: Esperava um '{' apos ')'.\nEx:\nvoid func()\n{\n}\n"
    | 28 ->
        "Estado 28: Esperava um '(' apos 'while'.\nEx:\nwhile()\n{\n}\n"
    | 29 ->
        "Estado 29: Esperava uma expressao apos '('.\nEx:\nwhile(a > 10)\n{\n}\n"
    | 75 ->
        "Estado 75: Esperava um ')' ou operador logico/aritmetico apos expressao.\nEx:\nwhile(a + b)\n{\n}\n"
    | 76 ->
        "Estado 76: Esperava um '{' apos ')'.\nEx:\nwhile(a > 10)\n{\n}\n"
    | 77 ->
        "Estado 77: Esperava um comando apos '{'.\nEx:\nwhile(a > 10)\n{\n   a--;\n}\n"
    | 24 ->
        "Estado 24: Esperava um identificador apos tipo.\nEx:\nvoid a;\n"
    | 162 ->
        "Estado 162: Esperava uma declaracao ou comando apos declaracao.\nEx:\nvoid func()\n{\n   int a;\n   a = 1;\n}\n"
    | 23 ->
        "Estado 23: Esperava uma declaracao ou comando apos '{'.\nEx:\nvoid func()\n{\n   int a;\n}\n"
    | 78 ->
        "Estado 78: Esperava uma expressao apos 'return'.\nEx:\nreturn (a + b) + c;\n"
    | 30 ->
        "Estado 30: Esperava uma expressao apos '!'.\nEx:\nreturn !a;\n"
    | 79 ->
        "Estado 79: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a + b;\n"
    | 40 ->
        "Estado 46: Esperava uma expessao apos '-'.\nEx:\nreturn a - b;\n"
    | 41 ->
        "Estado 47: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a - b;\n"
    | 49 ->
        "Estado 55: Esperava uma expressao apos '+'.\nEx:\nreturn a + b;\n"
    | 50 ->
        "Estado 56: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a + b;\n"
    | 160 ->
        "Estado 160: Esperava um comando ou '}' apos ';'.\nEx:\nvoid func()\n{\n   return a;\n}\n"
    | 51 ->
        "Estado 57: Esperava uma expressao apos '||'.\nEx:\nreturn a || b;\n"
    | 52 ->
        "Estado 58: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a || b;\n"
    | 42 ->
        "Estado 48: Esperava uma expressao apos '*'.\nEx:\nreturn a * b;\n"
    | 45 ->
        "Estado 51: Esperava uma expressao apos '%'.\nEx:\nreturn a % b;\n"
    | 53 ->
        "Estado 59: Esperava uma expressao apos '<='.\nEx:\nreturn a <= b;\n"
    | 54 ->
        "Estado 60: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a <= b;\n"
    | 55 ->
        "Estado 61: Esperava uma expressao apos '<'.\nEx:\nreturn a < b;\n"
    | 56 ->
        "Estado 62: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a < b;\n"
    | 57 ->
        "Estado 63: Esperava uma expressao apos '>='.\nEx:\nreturn a >= b;\n"
    | 58 ->
        "Estado 64: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a >= b;\n"
    | 59 ->
        "Estado 65: Esperava uma expressao apos '>'.\nEx:\nreturn a > b;\n"
    | 60 ->
        "Estado 66: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a > b;\n"
    | 61 ->
        "Estado 67: Esperava uma expressao apos '=='.\nEx:\nreturn a == b;\n"
    | 62 ->
        "Estado 68: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a == b;\n"
    | 63 ->
        "Estado 69: Esperava uma expressao apos '&&'.\nEx:\nreturn a && b;\n"
    | 64 ->
        "Estado 70: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a && b;\n"
    | 47 ->
        "Estado 53: Esperava uma expressao apos '/'.\nEx:\nreturn a / b;\n"
    | 65 ->
        "Estado 71: Esperava uma expressao apos '!='.\nEx:\nreturn a != (b + 1);\n"
    | 66 ->
        "Estado 72: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nreturn a != b;\n"
    | 37 ->
        "Estado 43: Esperava uma expressao apos '('.\nEx:\nreturn (a + 1);\n"
    | 39 ->
        "Estado 45: Esperava um operador logico/aritmetico ou ')' apos expressao.\nEx:\nreturn a + 1;\n"
    | 80 ->
        "Estado 80: Esperava um '(' apos 'puts'.\nEx:\nputs(a);\n"
    | 81 ->
        "Estado 81: Esperava uma variavel apos '('.\nEx:\nputs(a);\n"
    | 83 ->
        "Estado 83: Esperava um ')' apos variavel.\nEx:\nputs(a);\n"
    | 131 ->
        "Estado 131: Esperava um ';' apos comando.\nEx:\nputs(a);\n"
    | 85 ->
        "Estado 85: Esperava uma variavel apos operador de incremento/decremento.\nEx:\n++a;\n"
    | 134 ->
        "Estado 134: Esperava um ';' apos comando.\nEx:\n++a;\n"
    | 87 ->
        "Estado 87: Esperava um '(' apos 'if'.\nEx:\nif()\n{\n}\n"
    | 88 ->
        "Estado 88: Esperava uma expressao apos '('.\nEx:\nif(a > 10)\n{\n}\n"
    | 89 ->
        "Estado 89: Esperava um ')' ou operador logico/aritmetico apos expressao.\nEx:\nif((a + b) > 10)\n{\n}\n"
    | 90 ->
        "Estado 90: Esperava um '{' apos ')'.\nEx:\nif(a > 10)\n{\n   a = 1;\n}\n"
    | 91 ->
        "Estado 91: Esperava um comando apos '{'.\nEx:\nif(a > 10)\n{\n   a = 1;\n}\n"
    | 150 ->
        "Estado 150: Esperava um comando ou 'else' apos '}'.\nEx:\nif(a > 10)\n{\n   a--;\n}\nelse\n{\n   a++;\n}\n"
    | 151 ->
        "Estado 151: Esperava um '{' apos 'else'.\nEx:\nif()\n{\n}\nelse\n{\n}\n"
    | 152 ->
        "Estado 152: Esperava um comando apos '{'.\nEx:\nif()\n{\n}\nelse\n{\n   a = 1;\n}\n"
    | 104 ->
        "Estado 104: Esperava uma expressao apos '-='.\nEx:\na -= 1;\n"
    | 105 ->
        "Estado 105: Esperava um ';' ou operador logico/aritmerico apos expressao.\nEx:\na -= 10;\na -= a + 10;\n"
    | 112 ->
        "Estado 112: Esperava um '=' ou decremento/incremento apos variavel.\nEx:\na--;\nb = 1;\n"
    | 143 ->
        "Estado 143: Esperava um ';' apos comando de atribuicao.\nEx:\na = 1;\n"
    | 35 ->
        "Estado 35: Esperava um parametro ou ')' apos '('.\nEx:\nfunc();\nfunc(a);\n"
    | 34 ->
        "Estado 36: Esperava um ')' ou ',' apos identificador.\nEx:\nfunc(a);\nfunc(a, b);\n"
    | 72 ->
        "Estado 37: Esperava um parametro apos ','.\nEx:\nfunc(a, b);\n"
    | 141 ->
        "Estado 141: Esperava um ';' apos ')'.\nEx:\nvoid func()\n{\n   gets(a);\n}\n"
    | 92 ->
        "Estado 92: Esperava um '(' apos 'gets'.\nEx:\ngets(a);\n"
    | 93 ->
        "Estado 93: Esperava uma variavel apos '('.\nEx:\ngets(a);\n"
    | 94 ->
        "Estado 94: Esperava um ')' apos variavel.\nEx:\ngets(a);\n"
    | 136 ->
        "Estado 136: Esperava um ';' apos ')'.\nEx:\ngets(a);\n"
    | 96 ->
        "Estado 96: Esperava um '(' apos 'for'.\nEx:\nfor(;;)\n{\n}\n"
    | 97 ->
        "Estado 97: Esperava um comando de atribuicao apos '('.\nEx:\nfor(a = 1; ;)\n{\n}\n"
    | 98 ->
        "Estado 98: Esperava um '=' apos variavel.\nEx:\nfor(a = 1; ;)\n{\n}\n"
    | 107 ->
        "Estado 107: Esperava uma expressao apos ';'.\nEx:\nfor(; a < 10;)\n{\n}\n"
    | 108 ->
        "Estado 108: Esperava um ';' ou operador logico/aritmetico apos expressao.\nEx:\nfor(a = 1; a < 10; a++)\n{\n}\n"
    | 109 ->
        "Estado 109: Esperava um comando de incremento/decremento apos ';'.\nEx:\nfor(a = 1; a < 10; a++)\n{\n}\n"
    | 117 ->
        "Estado 117: Esperava um ')' apos comando de incremento/decremento.\nEx:\nfor(a = 1; a < 10; a++)\n{\n}\n"
    | 118 ->
        "Estado 118: Esperava um '{' apos ')'.\nEx:\nfor(a = 1; a < 10; a++)\n{\n}\n"
    | 119 ->
        "Estado 119: Esperava um comando apos '{'.\nEx:\nfor(a = 0; a < 10; a++)\n{\n   puts(a);\n}\n"
    | 106 ->
        "Estado 106: Esperava um ';' apos comando de atribuicao.\nEx:\nfor(a = 1;;)\n{\n}\n"
    | 120 ->
        "Estado 120: Esperava um '{' apos 'do'.\nEx:\ndo\n{\n}\nwhile();\n"
    | 121 ->
        "Estado 121: Esperava um comando apos '{'.\nEx:\ndo\n{\n   a--;\n}\nwhile(a > 10);\n"
    | 145 ->
        "Estado 145: Esperava um comando ou '}' apos ';'.\nEx:\nEx:\ndo\n{\n   a--;\n}\nwhile(a < 10);\n"
    | 124 ->
        "Estado 124: Esperava um '(' apos 'while'.\nEx:\ndo\n{\n}\nwhile();\n"
    | 125 ->
        "Estado 125: Esperava uma expressao apos '('.\nEx:\ndo\n{\n   a--;\n}\nwhile(a > 10);\n"
    | 126 ->
        "Estado 126: Esperava um ')' ou um operador logico/aritmetico.\nEx:\ndo\n{\n   a--;\n}\nwhile(a > 10);\n"
    | 139 ->
        "Estado 139: Esperava um ';'.\nEx:\ndo\n{\n}while();\n"
    | 123 ->
        "Estado 123: Esperava um comando 'while'.\nEx:\ndo\n{\n}\nwhile();\n"
    | 110 ->
        "Estado 110: Esperava uma variavel ap\195\179s operador unario.\nEx:\n--a;\n"
    | 1 ->
        "Estado 1: Esperava o nome de uma biblioteca.\nEx:\n#include <stdio.h>\n"
    | 170 ->
        "Estado 170: Esperava uma biblioteca ou tipo (void, int, float, char).\nEx:\n#include <stdio.h>\n#include <stdlib.h>\nint a;\n"
    | _ ->
        raise Not_found
