# 1 "lexico.mll"
 
  open Lexing
  open Printf

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

type tokens = APAR
            | FPAR
            | ATRIB
            | IF
            | WHILE
            | LITINT of int
            | LITSTRING of string
            | ID of string
            | EOF

# 30 "lexico.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\242\255\243\255\244\255\075\000\160\000\235\000\150\000\
    \000\000\250\255\251\255\017\000\254\255\001\000\003\000\252\255\
    \123\000\249\255\059\001\134\001\209\001\028\002\103\002\226\001\
    \252\255\253\255\000\000\013\000\255\255\254\255\160\002\249\255\
    \250\255\161\002\255\255\251\255\252\255\253\255\254\255";
  Lexing.lex_backtrk = 
   "\255\255\255\255\255\255\255\255\010\000\010\000\010\000\007\000\
    \012\000\255\255\255\255\012\000\255\255\001\000\000\000\255\255\
    \002\000\255\255\008\000\010\000\010\000\010\000\009\000\255\255\
    \255\255\255\255\002\000\002\000\255\255\255\255\255\255\255\255\
    \255\255\005\000\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default = 
   "\002\000\000\000\000\000\000\000\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\000\000\255\255\255\255\000\000\
    \016\000\000\000\255\255\255\255\255\255\255\255\255\255\025\000\
    \000\000\000\000\255\255\255\255\000\000\000\000\032\000\000\000\
    \000\000\255\255\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\014\000\012\000\012\000\014\000\013\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \014\000\000\000\003\000\014\000\000\000\000\000\000\000\000\000\
    \010\000\009\000\029\000\000\000\000\000\000\000\000\000\011\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\008\000\015\000\028\000\017\000\000\000\000\000\
    \016\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\006\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\005\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\255\255\000\000\000\000\
    \255\255\000\000\000\000\000\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\000\000\000\000\
    \000\000\000\000\004\000\000\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\000\000\000\000\000\000\000\000\004\000\
    \001\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \019\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\000\000\000\000\
    \000\000\000\000\004\000\000\000\004\000\004\000\004\000\004\000\
    \004\000\018\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\000\000\000\000\
    \000\000\000\000\000\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\000\000\000\000\
    \000\000\000\000\004\000\000\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\020\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\000\000\027\000\000\000\000\000\000\000\
    \000\000\026\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\000\000\000\000\000\000\000\000\
    \004\000\000\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\021\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\000\000\
    \000\000\000\000\000\000\004\000\000\000\004\000\004\000\004\000\
    \004\000\022\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\034\000\036\000\000\000\000\000\004\000\000\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\024\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\033\000\035\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\037\000\
    \000\000\000\000\000\000\000\000\000\000\038\000\000\000\000\000\
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
    \031\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\013\000\014\000\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\000\000\014\000\255\255\255\255\255\255\255\255\
    \000\000\000\000\026\000\255\255\255\255\255\255\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\011\000\027\000\008\000\255\255\255\255\
    \011\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\016\000\255\255\255\255\
    \016\000\255\255\255\255\255\255\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\255\255\255\255\
    \255\255\255\255\004\000\255\255\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\255\255\255\255\255\255\255\255\005\000\
    \000\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\255\255\255\255\
    \255\255\255\255\006\000\255\255\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\255\255\255\255\
    \255\255\255\255\255\255\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\016\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\255\255\255\255\
    \255\255\255\255\018\000\255\255\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\255\255\255\255\255\255\255\255\019\000\255\255\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\255\255\023\000\255\255\255\255\255\255\
    \255\255\023\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\255\255\255\255\255\255\255\255\
    \020\000\255\255\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\255\255\
    \255\255\255\255\255\255\021\000\255\255\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\021\000\
    \021\000\021\000\021\000\021\000\021\000\021\000\021\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\030\000\033\000\255\255\255\255\022\000\255\255\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\022\000\022\000\022\000\022\000\022\000\022\000\
    \022\000\022\000\023\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\030\000\033\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\033\000\
    \255\255\255\255\255\255\255\255\255\255\033\000\255\255\255\255\
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
    \030\000\255\255";
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

let rec token lexbuf =
    __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 41 "lexico.mll"
             ( token lexbuf )
# 307 "lexico.ml"

  | 1 ->
# 42 "lexico.mll"
             ( incr_num_linha lexbuf; token lexbuf )
# 312 "lexico.ml"

  | 2 ->
# 43 "lexico.mll"
             ( token lexbuf )
# 317 "lexico.ml"

  | 3 ->
# 44 "lexico.mll"
             ( comentario_bloco 0 lexbuf )
# 322 "lexico.ml"

  | 4 ->
# 45 "lexico.mll"
             ( APAR )
# 327 "lexico.ml"

  | 5 ->
# 46 "lexico.mll"
             ( FPAR )
# 332 "lexico.ml"

  | 6 ->
# 47 "lexico.mll"
             ( ATRIB )
# 337 "lexico.ml"

  | 7 ->
let
# 48 "lexico.mll"
             num
# 343 "lexico.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 48 "lexico.mll"
                 ( let numero = int_of_string num in 
                    LITINT numero  )
# 348 "lexico.ml"

  | 8 ->
# 50 "lexico.mll"
             ( IF )
# 353 "lexico.ml"

  | 9 ->
# 51 "lexico.mll"
             ( WHILE )
# 358 "lexico.ml"

  | 10 ->
let
# 52 "lexico.mll"
                   id
# 364 "lexico.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 52 "lexico.mll"
                      ( ID id )
# 368 "lexico.ml"

  | 11 ->
# 53 "lexico.mll"
             ( let buffer = Buffer.create 1 in 
               let str = leia_string buffer lexbuf in
                LITSTRING str )
# 375 "lexico.ml"

  | 12 ->
let
# 56 "lexico.mll"
       c
# 381 "lexico.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 56 "lexico.mll"
          ( failwith (msg_erro lexbuf c) )
# 385 "lexico.ml"

  | 13 ->
# 57 "lexico.mll"
             ( EOF )
# 390 "lexico.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and comentario_bloco n lexbuf =
    __ocaml_lex_comentario_bloco_rec n lexbuf 23
and __ocaml_lex_comentario_bloco_rec n lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 59 "lexico.mll"
          ( if n=0 then token lexbuf 
            else comentario_bloco (n-1) lexbuf )
# 402 "lexico.ml"

  | 1 ->
# 61 "lexico.mll"
          ( comentario_bloco (n+1) lexbuf )
# 407 "lexico.ml"

  | 2 ->
# 62 "lexico.mll"
          ( comentario_bloco n lexbuf )
# 412 "lexico.ml"

  | 3 ->
# 63 "lexico.mll"
          ( failwith "Comentário não fechado" )
# 417 "lexico.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_comentario_bloco_rec n lexbuf __ocaml_lex_state

and leia_string buffer lexbuf =
    __ocaml_lex_leia_string_rec buffer lexbuf 30
and __ocaml_lex_leia_string_rec buffer lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 65 "lexico.mll"
          ( Buffer.contents buffer)
# 428 "lexico.ml"

  | 1 ->
# 66 "lexico.mll"
          ( Buffer.add_char buffer '\t'; leia_string buffer lexbuf )
# 433 "lexico.ml"

  | 2 ->
# 67 "lexico.mll"
          ( Buffer.add_char buffer '\n'; leia_string buffer lexbuf )
# 438 "lexico.ml"

  | 3 ->
# 68 "lexico.mll"
            ( Buffer.add_char buffer '"'; leia_string buffer lexbuf )
# 443 "lexico.ml"

  | 4 ->
# 69 "lexico.mll"
             ( Buffer.add_char buffer '\\'; leia_string buffer lexbuf )
# 448 "lexico.ml"

  | 5 ->
let
# 70 "lexico.mll"
       c
# 454 "lexico.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 70 "lexico.mll"
            ( Buffer.add_char buffer c; leia_string buffer lexbuf )
# 458 "lexico.ml"

  | 6 ->
# 71 "lexico.mll"
          ( failwith "A string não foi fechada")
# 463 "lexico.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_leia_string_rec buffer lexbuf __ocaml_lex_state

;;
