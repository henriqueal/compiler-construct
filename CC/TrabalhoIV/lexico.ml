# 1 "lexico.mll"
 
  open Lexing
  open Printf
  open Sintatico
         

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



# 24 "lexico.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\244\255\245\255\246\255\247\255\248\255\249\255\250\255\
    \251\255\001\000\254\255\001\000\003\000\252\255\004\000\002\000\
    \252\255\253\255\000\000\003\000\255\255\254\255\003\000\249\255\
    \250\255\000\000\255\255\251\255\252\255\253\255\254\255";
  Lexing.lex_backtrk = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\010\000\255\255\001\000\000\000\255\255\002\000\255\255\
    \255\255\255\255\002\000\002\000\255\255\255\255\255\255\255\255\
    \255\255\005\000\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default = 
   "\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255\000\000\255\255\255\255\000\000\014\000\017\000\
    \000\000\000\000\255\255\255\255\000\000\000\000\024\000\000\000\
    \000\000\255\255\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\012\000\010\000\010\000\012\000\011\000\255\255\000\000\
    \000\000\255\255\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \012\000\000\000\028\000\012\000\000\000\026\000\000\000\000\000\
    \000\000\000\000\021\000\013\000\019\000\000\000\000\000\009\000\
    \014\000\018\000\020\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\027\000\000\000\000\000\025\000\
    \000\000\008\000\007\000\006\000\005\000\004\000\003\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\029\000\000\000\
    \000\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\
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
    \001\000\000\000\016\000\023\000\255\255";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\011\000\012\000\000\000\014\000\255\255\
    \255\255\014\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\025\000\012\000\255\255\022\000\255\255\255\255\
    \255\255\255\255\018\000\009\000\015\000\255\255\255\255\000\000\
    \009\000\015\000\019\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\025\000\255\255\255\255\022\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\025\000\255\255\
    \255\255\255\255\255\255\255\255\025\000\255\255\255\255\255\255\
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
    \000\000\255\255\015\000\022\000\014\000";
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
# 35 "lexico.mll"
             ( token lexbuf )
# 130 "lexico.ml"

  | 1 ->
# 36 "lexico.mll"
             ( incr_num_linha lexbuf; token lexbuf )
# 135 "lexico.ml"

  | 2 ->
# 37 "lexico.mll"
             ( token lexbuf )
# 140 "lexico.ml"

  | 3 ->
# 38 "lexico.mll"
             ( comentario_bloco 0 lexbuf )
# 145 "lexico.ml"

  | 4 ->
# 39 "lexico.mll"
             ( A )
# 150 "lexico.ml"

  | 5 ->
# 40 "lexico.mll"
             ( B )
# 155 "lexico.ml"

  | 6 ->
# 41 "lexico.mll"
             ( C )
# 160 "lexico.ml"

  | 7 ->
# 42 "lexico.mll"
            ( D )
# 165 "lexico.ml"

  | 8 ->
# 43 "lexico.mll"
            ( E )
# 170 "lexico.ml"

  | 9 ->
# 44 "lexico.mll"
          ( F )
# 175 "lexico.ml"

  | 10 ->
let
# 45 "lexico.mll"
       c
# 181 "lexico.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 45 "lexico.mll"
          ( failwith (msg_erro lexbuf c) )
# 185 "lexico.ml"

  | 11 ->
# 46 "lexico.mll"
             ( EOF )
# 190 "lexico.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and comentario_bloco n lexbuf =
    __ocaml_lex_comentario_bloco_rec n lexbuf 15
and __ocaml_lex_comentario_bloco_rec n lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 48 "lexico.mll"
          ( if n=0 then token lexbuf 
            else comentario_bloco (n-1) lexbuf )
# 202 "lexico.ml"

  | 1 ->
# 50 "lexico.mll"
          ( comentario_bloco (n+1) lexbuf )
# 207 "lexico.ml"

  | 2 ->
# 51 "lexico.mll"
          ( comentario_bloco n lexbuf )
# 212 "lexico.ml"

  | 3 ->
# 52 "lexico.mll"
          ( failwith "Comentário não fechado" )
# 217 "lexico.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_comentario_bloco_rec n lexbuf __ocaml_lex_state

and leia_string buffer lexbuf =
    __ocaml_lex_leia_string_rec buffer lexbuf 22
and __ocaml_lex_leia_string_rec buffer lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 54 "lexico.mll"
          ( Buffer.contents buffer)
# 228 "lexico.ml"

  | 1 ->
# 55 "lexico.mll"
          ( Buffer.add_char buffer '\t'; leia_string buffer lexbuf )
# 233 "lexico.ml"

  | 2 ->
# 56 "lexico.mll"
          ( Buffer.add_char buffer '\n'; leia_string buffer lexbuf )
# 238 "lexico.ml"

  | 3 ->
# 57 "lexico.mll"
            ( Buffer.add_char buffer '"'; leia_string buffer lexbuf )
# 243 "lexico.ml"

  | 4 ->
# 58 "lexico.mll"
             ( Buffer.add_char buffer '\\'; leia_string buffer lexbuf )
# 248 "lexico.ml"

  | 5 ->
let
# 59 "lexico.mll"
       c
# 254 "lexico.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 59 "lexico.mll"
            ( Buffer.add_char buffer c; leia_string buffer lexbuf )
# 258 "lexico.ml"

  | 6 ->
# 60 "lexico.mll"
          ( failwith "A string não foi fechada")
# 263 "lexico.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_leia_string_rec buffer lexbuf __ocaml_lex_state

;;

