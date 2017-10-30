# 2 "lexer.mll"
 
open Parser

# 6 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\204\255\077\000\087\000\080\000\002\000\199\000\020\000\
    \061\000\099\000\071\000\059\000\099\000\063\000\104\000\064\000\
    \108\000\107\000\065\000\093\000\101\000\001\000\003\000\000\000\
    \004\000\005\000\006\000\007\000\008\000\009\000\031\000\012\000\
    \095\000\010\000\011\000\189\000\014\000\015\000\027\000\028\000\
    \254\255\253\255\252\255\251\255\059\000\250\255\249\255\248\255\
    \247\255\119\000\118\000\106\000\125\000\123\000\113\000\061\000\
    \246\255\202\000\245\255\062\000\244\255\243\255\063\000\242\255\
    \235\255\241\255\240\255\239\255\238\255\237\255\236\255\064\000\
    \234\255\231\255\194\000\233\255\230\255\195\000\232\255\128\000\
    \197\000\229\255\129\000\135\000\126\000\203\000\228\255\205\000\
    \227\255\138\000\134\000\149\000\221\000\149\000\226\255\220\000\
    \225\255\222\000\224\255\145\000\148\000\155\000\149\000\164\000\
    \234\000\223\255\235\000\222\255\169\000\153\000\165\000\160\000\
    \162\000\241\000\221\255\158\000\164\000\244\000\220\255\245\000\
    \246\000\219\255\218\255\180\000\183\000\173\000\250\000\217\255\
    \167\000\176\000\253\000\216\255\254\000\215\255\255\000\214\255\
    \176\000\172\000\189\000\194\000\178\000\007\001\213\255\184\000\
    \193\000\017\001\212\255\189\000\207\000\201\000\026\001\211\255\
    \216\000\031\001\210\255\204\000\216\000\215\000\039\001\209\255\
    \223\000\221\000\229\000\043\001\208\255\028\001\038\001";
  Lexing.lex_backtrk = 
   "\255\255\255\255\049\000\255\255\048\000\000\000\000\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\050\000";
  Lexing.lex_default = 
   "\255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\000\000\255\255\000\000\000\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \000\000\000\000\255\255\000\000\000\000\255\255\000\000\255\255\
    \255\255\000\000\255\255\255\255\255\255\255\255\000\000\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
    \000\000\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\255\255\255\255\255\255\000\000\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\000\000\255\255\000\000\255\255\000\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
    \255\255\255\255\000\000\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\000\000\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\000\000\255\255\255\255";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\005\000\005\000\005\000\005\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \006\000\076\000\005\000\073\000\070\000\069\000\068\000\067\000\
    \066\000\065\000\048\000\047\000\058\000\003\000\043\000\042\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\057\000\041\000\040\000\071\000\077\000\063\000\
    \074\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\046\000\062\000\056\000\061\000\064\000\
    \072\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\165\000\160\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\155\000\136\000\134\000\123\000\115\000\
    \087\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\148\000\129\000\101\000\120\000\082\000\
    \005\000\005\000\128\000\079\000\049\000\147\000\119\000\090\000\
    \050\000\089\000\051\000\100\000\052\000\045\000\053\000\054\000\
    \055\000\099\000\075\000\078\000\080\000\081\000\083\000\005\000\
    \084\000\085\000\060\000\086\000\025\000\088\000\097\000\039\000\
    \038\000\027\000\029\000\033\000\028\000\031\000\026\000\044\000\
    \059\000\091\000\092\000\095\000\096\000\094\000\098\000\108\000\
    \001\000\035\000\034\000\022\000\030\000\021\000\106\000\102\000\
    \103\000\104\000\105\000\107\000\109\000\110\000\111\000\112\000\
    \113\000\114\000\116\000\117\000\118\000\122\000\121\000\124\000\
    \125\000\126\000\127\000\132\000\130\000\131\000\133\000\135\000\
    \138\000\143\000\139\000\140\000\137\000\024\000\141\000\142\000\
    \020\000\019\000\144\000\018\000\017\000\016\000\015\000\145\000\
    \014\000\146\000\152\000\013\000\149\000\012\000\011\000\150\000\
    \032\000\010\000\151\000\009\000\008\000\153\000\007\000\154\000\
    \156\000\157\000\037\000\158\000\036\000\023\000\093\000\159\000\
    \161\000\162\000\163\000\164\000\166\000\166\000\166\000\166\000\
    \166\000\166\000\166\000\166\000\166\000\166\000\166\000\166\000\
    \166\000\166\000\166\000\166\000\166\000\166\000\166\000\166\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\005\000\005\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\021\000\005\000\022\000\024\000\025\000\026\000\027\000\
    \028\000\029\000\033\000\034\000\031\000\000\000\036\000\037\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\031\000\038\000\039\000\023\000\021\000\030\000\
    \022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\044\000\030\000\055\000\059\000\062\000\
    \071\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\002\000\007\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\008\000\010\000\011\000\013\000\015\000\
    \018\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\009\000\012\000\016\000\014\000\019\000\
    \006\000\006\000\012\000\020\000\032\000\009\000\014\000\017\000\
    \049\000\017\000\050\000\016\000\051\000\035\000\052\000\053\000\
    \054\000\016\000\074\000\077\000\079\000\080\000\082\000\006\000\
    \083\000\084\000\057\000\085\000\006\000\087\000\089\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\035\000\
    \057\000\090\000\091\000\093\000\095\000\092\000\097\000\099\000\
    \000\000\006\000\006\000\006\000\006\000\006\000\100\000\101\000\
    \102\000\103\000\104\000\106\000\108\000\109\000\110\000\111\000\
    \112\000\113\000\115\000\116\000\117\000\119\000\120\000\123\000\
    \124\000\125\000\126\000\128\000\129\000\130\000\132\000\134\000\
    \136\000\137\000\138\000\139\000\136\000\006\000\140\000\141\000\
    \006\000\006\000\143\000\006\000\006\000\006\000\006\000\144\000\
    \006\000\145\000\147\000\006\000\148\000\006\000\006\000\149\000\
    \006\000\006\000\150\000\006\000\006\000\152\000\006\000\153\000\
    \155\000\156\000\006\000\157\000\006\000\006\000\092\000\158\000\
    \160\000\161\000\162\000\163\000\165\000\165\000\165\000\165\000\
    \165\000\165\000\165\000\165\000\165\000\165\000\166\000\166\000\
    \166\000\166\000\166\000\166\000\166\000\166\000\166\000\166\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec read lexbuf =
    __ocaml_lex_read_rec lexbuf 0
and __ocaml_lex_read_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 15 "lexer.mll"
             ( read lexbuf )
# 237 "lexer.ml"

  | 1 ->
# 16 "lexer.mll"
         ( ABRECOLCHETE )
# 242 "lexer.ml"

  | 2 ->
# 17 "lexer.mll"
         ( FECHACOLCHETE )
# 247 "lexer.ml"

  | 3 ->
# 18 "lexer.mll"
         ( ABRECHAVES )
# 252 "lexer.ml"

  | 4 ->
# 19 "lexer.mll"
         ( FECHACHAVES )
# 257 "lexer.ml"

  | 5 ->
# 20 "lexer.mll"
         ( DOISPONTOS )
# 262 "lexer.ml"

  | 6 ->
# 21 "lexer.mll"
          ( DOISDOISPONTOS )
# 267 "lexer.ml"

  | 7 ->
# 22 "lexer.mll"
         ( PONTOEVIRGULA )
# 272 "lexer.ml"

  | 8 ->
# 23 "lexer.mll"
         ( VIRGULA )
# 277 "lexer.ml"

  | 9 ->
# 24 "lexer.mll"
                ( QUADRADO )
# 282 "lexer.ml"

  | 10 ->
# 25 "lexer.mll"
         ( PONTO )
# 287 "lexer.ml"

  | 11 ->
# 26 "lexer.mll"
          ( PONTOPONTO )
# 292 "lexer.ml"

  | 12 ->
# 27 "lexer.mll"
           ( PONTOPONTOPONTO )
# 297 "lexer.ml"

  | 13 ->
# 28 "lexer.mll"
         ( ATRIBUICAO )
# 302 "lexer.ml"

  | 14 ->
# 29 "lexer.mll"
         ( SOMA )
# 307 "lexer.ml"

  | 15 ->
# 30 "lexer.mll"
         ( SUBTRACAO )
# 312 "lexer.ml"

  | 16 ->
# 31 "lexer.mll"
         ( MULTIPLICACAO )
# 317 "lexer.ml"

  | 17 ->
# 32 "lexer.mll"
         ( DIVISAO )
# 322 "lexer.ml"

  | 18 ->
# 33 "lexer.mll"
         ( MODULO )
# 327 "lexer.ml"

  | 19 ->
# 34 "lexer.mll"
         ( EXPONENCIACAO )
# 332 "lexer.ml"

  | 20 ->
# 35 "lexer.mll"
          ( IGUALDADE )
# 337 "lexer.ml"

  | 21 ->
# 36 "lexer.mll"
          ( DIFERENTE )
# 342 "lexer.ml"

  | 22 ->
# 37 "lexer.mll"
          ( MENORIGUAL )
# 347 "lexer.ml"

  | 23 ->
# 38 "lexer.mll"
          ( MAIORIGUAL )
# 352 "lexer.ml"

  | 24 ->
# 39 "lexer.mll"
         ( MENOR )
# 357 "lexer.ml"

  | 25 ->
# 40 "lexer.mll"
         ( MAIOR )
# 362 "lexer.ml"

  | 26 ->
# 41 "lexer.mll"
           ( AND )
# 367 "lexer.ml"

  | 27 ->
# 42 "lexer.mll"
             ( BREAK )
# 372 "lexer.ml"

  | 28 ->
# 43 "lexer.mll"
          ( DO )
# 377 "lexer.ml"

  | 29 ->
# 44 "lexer.mll"
            ( ELSE )
# 382 "lexer.ml"

  | 30 ->
# 45 "lexer.mll"
              ( ELSEIF )
# 387 "lexer.ml"

  | 31 ->
# 46 "lexer.mll"
           ( END )
# 392 "lexer.ml"

  | 32 ->
# 47 "lexer.mll"
             ( FALSE )
# 397 "lexer.ml"

  | 33 ->
# 48 "lexer.mll"
           ( FOR )
# 402 "lexer.ml"

  | 34 ->
# 49 "lexer.mll"
                ( FUNCTION )
# 407 "lexer.ml"

  | 35 ->
# 50 "lexer.mll"
            ( GOTO )
# 412 "lexer.ml"

  | 36 ->
# 51 "lexer.mll"
          ( IF )
# 417 "lexer.ml"

  | 37 ->
# 52 "lexer.mll"
          ( IN )
# 422 "lexer.ml"

  | 38 ->
# 53 "lexer.mll"
             ( LOCAL )
# 427 "lexer.ml"

  | 39 ->
# 54 "lexer.mll"
           ( NIL )
# 432 "lexer.ml"

  | 40 ->
# 55 "lexer.mll"
           ( NOT )
# 437 "lexer.ml"

  | 41 ->
# 56 "lexer.mll"
          ( OR )
# 442 "lexer.ml"

  | 42 ->
# 57 "lexer.mll"
              ( REPEAT )
# 447 "lexer.ml"

  | 43 ->
# 58 "lexer.mll"
              ( RETURN )
# 452 "lexer.ml"

  | 44 ->
# 59 "lexer.mll"
            ( THEN )
# 457 "lexer.ml"

  | 45 ->
# 60 "lexer.mll"
            ( TRUE )
# 462 "lexer.ml"

  | 46 ->
# 61 "lexer.mll"
             ( UNTIL )
# 467 "lexer.ml"

  | 47 ->
# 62 "lexer.mll"
             ( WHILE )
# 472 "lexer.ml"

  | 48 ->
# 63 "lexer.mll"
           ( ID (Lexing.lexeme lexbuf) )
# 477 "lexer.ml"

  | 49 ->
# 64 "lexer.mll"
           ( INT (int_of_string (Lexing.lexeme lexbuf)) )
# 482 "lexer.ml"

  | 50 ->
# 65 "lexer.mll"
           ( FLOAT (float_of_string (Lexing.lexeme lexbuf)))
# 487 "lexer.ml"

  | 51 ->
# 66 "lexer.mll"
           ( EOF )
# 492 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; 
      __ocaml_lex_read_rec lexbuf __ocaml_lex_state

;;
