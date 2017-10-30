
module Basics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VIRGULA
    | UNTIL
    | TRUE
    | THEN
    | SUBTRACAO
    | STRING of (string)
    | SOMA
    | RETURN
    | REPEAT
    | QUADRADO
    | PONTOPONTOPONTO
    | PONTOPONTO
    | PONTOEVIRGULA
    | PONTO
    | OR
    | NOT
    | NIL
    | MULTIPLICACAO
    | MODULO
    | MENORIGUAL
    | MENOR
    | MAIORIGUAL
    | MAIOR
    | LOCAL
    | INT of (int)
    | IN
    | IGUALDADE
    | IF
    | ID of (string)
    | GOTO
    | FUNCTION
    | FOR
    | FLOAT of (float)
    | FECHAPARENTESE
    | FECHACOLCHETE
    | FECHACHAVES
    | FALSE
    | EXPONENCIACAO
    | EOF
    | END
    | ELSEIF
    | ELSE
    | DOISPONTOS
    | DOISDOISPONTOS
    | DO
    | DIVISAO
    | DIFERENTE
    | BREAK
    | ATRIBUICAO
    | AND
    | ABREPARENTESE
    | ABRECOLCHETE
    | ABRECHAVES
  
end

include Basics

let _eRR =
  Basics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState194
  | MenhirState193
  | MenhirState184
  | MenhirState183
  | MenhirState180
  | MenhirState175
  | MenhirState172
  | MenhirState171
  | MenhirState170
  | MenhirState169
  | MenhirState166
  | MenhirState164
  | MenhirState152
  | MenhirState147
  | MenhirState144
  | MenhirState143
  | MenhirState141
  | MenhirState140
  | MenhirState138
  | MenhirState135
  | MenhirState131
  | MenhirState129
  | MenhirState128
  | MenhirState127
  | MenhirState126
  | MenhirState125
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState120
  | MenhirState113
  | MenhirState110
  | MenhirState106
  | MenhirState105
  | MenhirState104
  | MenhirState99
  | MenhirState98
  | MenhirState96
  | MenhirState94
  | MenhirState91
  | MenhirState88
  | MenhirState84
  | MenhirState83
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState75
  | MenhirState74
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState43
  | MenhirState42
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState30
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState22
  | MenhirState17
  | MenhirState14
  | MenhirState12
  | MenhirState11
  | MenhirState1
  | MenhirState0
  
  open Ast

let rec _menhir_goto_option_fieldsep_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_3 : (unit option)) = _v in
    let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit list))) = _menhir_stack in
    let _v : (unit) =                                          ( ) in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (unit)) = _v in
    let _v : (unit option) =     ( Some x ) in
    _menhir_goto_option_fieldlist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_fieldsep_field_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PONTOEVIRGULA ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | VIRGULA ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | FECHACHAVES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState91 in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_fieldsep_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_fieldsep_field_rule_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_fieldsep : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (unit))) = _menhir_stack in
        let _v : (unit option) =     ( Some x ) in
        _menhir_goto_option_fieldsep_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState88 | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABRECHAVES ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ABRECOLCHETE ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ABREPARENTESE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | FLOAT _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | FUNCTION ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ID _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | NIL ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | NOT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PONTOPONTOPONTO ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | QUADRADO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | STRING _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | SUBTRACAO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
    | _ ->
        _menhir_fail ()

and _menhir_reduce93 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) =                  ( ) in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_elseif_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | BREAK ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | DO ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | DOISDOISPONTOS ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | FOR ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | FUNCTION ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | GOTO ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
            | IF ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | LOCAL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | PONTOEVIRGULA ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | REPEAT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | END | RETURN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175)
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_else_block_rule_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_elseif_rule_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_PONTOEVIRGULA_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_3 : (unit option)) = _v in
    let (_menhir_stack, _, (_2 : (unit option))) = _menhir_stack in
    let _1 = () in
    let _v : (unit) =                                    ( ) in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (unit)) = _v in
    let _v : (unit option) =     ( Some x ) in
    _menhir_goto_option_retstat_ _menhir_env _menhir_stack _v

and _menhir_goto_list_virgula_var_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (unit list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (unit))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_virgula_var_rule_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) =                           ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ATRIBUICAO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABRECHAVES ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | FLOAT _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | FUNCTION ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | NIL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | NOT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | PONTOPONTOPONTO ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | QUADRADO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | STRING _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | SUBTRACAO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (string)) = _v in
    let _v : (unit) =            ( ) in
    _menhir_goto_args _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (string)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _) = _menhir_stack in
        let _2 = () in
        let _v : (unit) =                        ( ) in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABRECHAVES ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ABREPARENTESE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | STRING _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | FECHAPARENTESE ->
        _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_fieldsep_field_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =             ( ) in
    _menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                   ( ) in
    _menhir_goto_fieldsep _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_virgula_exp_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (unit list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (unit))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_virgula_exp_rule_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) =                           ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState152 | MenhirState43 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (unit))) = _menhir_stack in
            let _v : (unit option) =     ( Some x ) in
            _menhir_goto_option_explist_ _menhir_env _menhir_stack _menhir_s _v
        | MenhirState27 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) =                        ( ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (x : (unit)) = _v in
            let _v : (unit option) =     ( Some x ) in
            _menhir_goto_option_atribuicao_explist_rule_ _menhir_env _menhir_stack _v
        | MenhirState138 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) =                                ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | MenhirState164 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | DO ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ABREPARENTESE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | BREAK ->
                    _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | DO ->
                    _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | DOISDOISPONTOS ->
                    _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | FOR ->
                    _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | FUNCTION ->
                    _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | GOTO ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
                | IF ->
                    _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | LOCAL ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | PONTOEVIRGULA ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | REPEAT ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | WHILE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | END | RETURN ->
                    _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState166
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        _menhir_fail ()

and _menhir_goto_binop : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_goto_functioncall : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState183 | MenhirState170 | MenhirState164 | MenhirState152 | MenhirState141 | MenhirState138 | MenhirState128 | MenhirState126 | MenhirState124 | MenhirState104 | MenhirState27 | MenhirState30 | MenhirState96 | MenhirState31 | MenhirState83 | MenhirState80 | MenhirState33 | MenhirState35 | MenhirState74 | MenhirState67 | MenhirState50 | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce93 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState0 | MenhirState194 | MenhirState22 | MenhirState23 | MenhirState175 | MenhirState172 | MenhirState106 | MenhirState166 | MenhirState131 | MenhirState135 | MenhirState147 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) =                  ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | ABRECHAVES | ABRECOLCHETE | DOISPONTOS | PONTO | STRING _ ->
            _menhir_reduce93 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_else_block_rule_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _), _, (_4 : (unit))), _, (_5 : (unit list))), (_6 : (unit option))) = _menhir_stack in
        let _7 = () in
        let _3 = () in
        let _1 = () in
        let _v : (unit) =                                                         ( ) in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_elseif_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run170 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170

and _menhir_goto_option_explist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FECHAPARENTESE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit option))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                           ( ) in
            _menhir_goto_args _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PONTOEVIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let x = () in
            let _v : (unit option) =     ( Some x ) in
            _menhir_goto_option_PONTOEVIRGULA_ _menhir_env _menhir_stack _v
        | ELSE | ELSEIF | END | EOF | UNTIL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_PONTOEVIRGULA_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_virgula_var_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run141 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141

and _menhir_reduce92 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) =         ( ) in
    _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_doispontos_id_rule_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_3 : (unit option)) = _v in
    let ((_menhir_stack, (_1 : (string))), _, (_2 : (unit list))) = _menhir_stack in
    let _v : (unit) =                                           ( ) in
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120

and _menhir_goto_option_virgula_tres_pontos_rule_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (unit option)) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
    let _v : (unit) =                                        ( ) in
    _menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_atribuicao_explist_rule_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_3 : (unit option)) = _v in
    let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
    let _1 = () in
    let _v : (unit) =                                             ( ) in
    _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_parlist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FECHAPARENTESE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABREPARENTESE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | BREAK ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | DO ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | DOISDOISPONTOS ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FOR ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FUNCTION ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | GOTO ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IF ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LOCAL ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PONTOEVIRGULA ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | REPEAT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | END | RETURN ->
            _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_parlist : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (unit)) = _v in
    let _v : (unit option) =     ( Some x ) in
    _menhir_goto_option_parlist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_comma_exp_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABREPARENTESE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | BREAK ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | DO ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | DOISDOISPONTOS ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | FOR ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | FUNCTION ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | GOTO ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | IF ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | LOCAL ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | PONTOEVIRGULA ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | REPEAT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | WHILE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | END | RETURN ->
            _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_prefixexp : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState183 | MenhirState170 | MenhirState164 | MenhirState152 | MenhirState138 | MenhirState128 | MenhirState126 | MenhirState124 | MenhirState104 | MenhirState27 | MenhirState30 | MenhirState96 | MenhirState31 | MenhirState83 | MenhirState80 | MenhirState33 | MenhirState74 | MenhirState67 | MenhirState50 | MenhirState43 | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABRECHAVES ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ABRECOLCHETE ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ABREPARENTESE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DOISPONTOS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PONTO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | STRING _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | AND | BREAK | DIFERENTE | DIVISAO | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | EXPONENCIACAO | FECHACHAVES | FECHACOLCHETE | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | IGUALDADE | LOCAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MODULO | MULTIPLICACAO | OR | PONTOEVIRGULA | PONTOPONTO | REPEAT | RETURN | SOMA | SUBTRACAO | THEN | UNTIL | VIRGULA | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) =               ( ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | MenhirState0 | MenhirState194 | MenhirState22 | MenhirState23 | MenhirState175 | MenhirState172 | MenhirState106 | MenhirState166 | MenhirState131 | MenhirState135 | MenhirState147 | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABRECHAVES ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ABRECOLCHETE ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ABREPARENTESE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | DOISPONTOS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | PONTO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | STRING _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143)
    | _ ->
        _menhir_fail ()

and _menhir_goto_field : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PONTOEVIRGULA ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | VIRGULA ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | FECHACHAVES ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))) = _menhir_stack in
        let _v : (unit) =                    ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PONTOEVIRGULA ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | VIRGULA ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | FECHACHAVES ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | _ ->
        _menhir_fail ()

and _menhir_reduce60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_virgula_exp_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =               ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =          ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =        ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                   ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =            ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =           ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =           ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =               ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                   ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =             ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =               ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =         ( ) in
    _menhir_goto_binop _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_args : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (unit)) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (unit))), _), (_3 : (string))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) =                                  ( ) in
        _menhir_goto_functioncall _menhir_env _menhir_stack _menhir_s _v
    | MenhirState143 | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
        let _v : (unit) =                    ( ) in
        _menhir_goto_functioncall _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_option_retstat_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (unit option)) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (unit list))) = _menhir_stack in
    let _v : (unit) =                    ( ) in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                  ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((((_menhir_stack, _menhir_s), _, (_2 : (string))), _), _, (_4 : (unit))), _), _, (_6 : (unit))), _, (_7 : (unit option))), _, (_9 : (unit))) = _menhir_stack in
            let _10 = () in
            let _8 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                                                    ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState166 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_4 : (unit))), _, (_6 : (unit))) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                          ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSEIF ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | ELSE | END ->
            _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169)
    | MenhirState172 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _), _, (_4 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) =                           ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSEIF ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState180
        | ELSE | END ->
            _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState180
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180)
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (_2 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) =                ( ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (unit)) = _v in
        let _v : (unit option) =     ( Some x ) in
        _menhir_goto_option_else_block_rule_ _menhir_env _menhir_stack _v
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | UNTIL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABRECHAVES ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | FLOAT _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | FUNCTION ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | NIL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | NOT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | PONTOPONTOPONTO ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | QUADRADO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | STRING _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | SUBTRACAO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (unit option))), _, (_4 : (unit))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                                     ( ) in
            (match _menhir_s with
            | MenhirState120 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_3 : (unit)) = _v in
                let ((_menhir_stack, _menhir_s), (_2 : (unit))) = _menhir_stack in
                let _1 = () in
                let _v : (unit) =                                ( ) in
                _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
            | MenhirState11 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_2 : (unit)) = _v in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _1 = () in
                let _v : (unit) =                       ( ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (unit)) = _v in
                let _v : (unit) =                 ( ) in
                _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState194 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _), _, (_4 : (unit))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                            ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) =                ( ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit option) =     ( None ) in
    _menhir_goto_option_explist_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_var : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 | MenhirState183 | MenhirState170 | MenhirState164 | MenhirState152 | MenhirState138 | MenhirState128 | MenhirState126 | MenhirState124 | MenhirState104 | MenhirState27 | MenhirState30 | MenhirState96 | MenhirState31 | MenhirState83 | MenhirState80 | MenhirState74 | MenhirState67 | MenhirState50 | MenhirState43 | MenhirState35 | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce92 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState0 | MenhirState194 | MenhirState22 | MenhirState23 | MenhirState175 | MenhirState172 | MenhirState106 | MenhirState166 | MenhirState131 | MenhirState147 | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VIRGULA ->
            _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | ABRECHAVES | ABRECOLCHETE | ABREPARENTESE | DOISPONTOS | PONTO | STRING _ ->
            _menhir_reduce92 _menhir_env (Obj.magic _menhir_stack)
        | ATRIBUICAO ->
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ATRIBUICAO | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) =                 ( ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VIRGULA ->
                _menhir_run141 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | ATRIBUICAO ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144)
        | ABRECHAVES | ABRECOLCHETE | ABREPARENTESE | DOISPONTOS | PONTO | STRING _ ->
            _menhir_reduce92 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_ponto_id_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_ponto_id_rule_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOISPONTOS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_2 : (string)) = _v in
                let _1 = () in
                let _v : (unit) =                   ( ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (x : (unit)) = _v in
                let _v : (unit option) =     ( Some x ) in
                _menhir_goto_option_doispontos_id_rule_ _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | ABREPARENTESE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_doispontos_id_rule_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_virgula_id_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (unit list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (unit))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_virgula_id_rule_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState123 | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (string))) = _menhir_stack in
        let _v : (unit) =                         ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        (match _menhir_s with
        | MenhirState25 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ATRIBUICAO ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ABRECHAVES ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | ABREPARENTESE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | FALSE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | FLOAT _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                | FUNCTION ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                | INT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                | NIL ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | NOT ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | PONTOPONTOPONTO ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | QUADRADO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | STRING _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
                | SUBTRACAO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
            | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (unit option) =     ( None ) in
                _menhir_goto_option_atribuicao_explist_rule_ _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState122 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ABRECHAVES ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | ABREPARENTESE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | FALSE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | FLOAT _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
                | FUNCTION ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
                | INT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
                | NIL ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | NOT ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | PONTOPONTOPONTO ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | QUADRADO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | STRING _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
                | SUBTRACAO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MenhirState12 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VIRGULA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | PONTOPONTOPONTO ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _2 = () in
                    let _1 = () in
                    let _v : (unit) =                             ( ) in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (x : (unit)) = _v in
                    let _v : (unit option) =     ( Some x ) in
                    _menhir_goto_option_virgula_tres_pontos_rule_ _menhir_env _menhir_stack _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | FECHAPARENTESE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _v : (unit option) =     ( None ) in
                _menhir_goto_option_virgula_tres_pontos_rule_ _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            _menhir_fail ())
    | _ ->
        _menhir_fail ()

and _menhir_goto_unop : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | PONTOPONTOPONTO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState12 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (unit) =                     ( ) in
        _menhir_goto_parlist _menhir_env _menhir_stack _menhir_s _v
    | FECHAPARENTESE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState12 in
        let _v : (unit option) =     ( None ) in
        _menhir_goto_option_parlist_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState164 | MenhirState152 | MenhirState138 | MenhirState27 | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | VIRGULA ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | VIRGULA | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) =                 ( ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VIRGULA ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHACHAVES | FECHACOLCHETE | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | THEN | UNTIL | VIRGULA | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))), _, (_3 : (unit))) = _menhir_stack in
            let _v : (unit) =                   ( ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | FECHACOLCHETE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState75 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (unit))), _), _, (_3 : (unit))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (unit) =                                              ( ) in
            _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHACHAVES | FECHACOLCHETE | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | THEN | UNTIL | VIRGULA | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_2 : (unit))) = _menhir_stack in
            let _v : (unit) =              ( ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | FECHACHAVES | PONTOEVIRGULA | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (string))), _, (_3 : (unit))) = _menhir_stack in
            let _2 = () in
            let _v : (unit) =                       ( ) in
            _menhir_goto_field _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | FECHACOLCHETE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState81 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ATRIBUICAO ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ABRECHAVES ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | ABREPARENTESE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | FALSE ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | FLOAT _v ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | FUNCTION ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | ID _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | INT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | NIL ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | NOT ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | PONTOPONTOPONTO ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | QUADRADO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | STRING _v ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | SUBTRACAO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | TRUE ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | FECHACHAVES | PONTOEVIRGULA | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (unit))), _), _, (_5 : (unit))) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                                   ( ) in
            _menhir_goto_field _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
    | MenhirState31 | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | FECHACHAVES | PONTOEVIRGULA | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (unit))) = _menhir_stack in
            let _v : (unit) =         ( ) in
            _menhir_goto_field _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | FECHAPARENTESE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState99 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                      ( ) in
            _menhir_goto_prefixexp _menhir_env _menhir_stack _menhir_s _v
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState105 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | BREAK ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | DO ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | DOISDOISPONTOS ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | FOR ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | FUNCTION ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GOTO ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | IF ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LOCAL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | PONTOEVIRGULA ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | REPEAT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ELSE | ELSEIF | END | RETURN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105)
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState125 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABRECHAVES ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | FLOAT _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | FUNCTION ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | NIL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | NOT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | PONTOPONTOPONTO ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | QUADRADO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | STRING _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | SUBTRACAO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125)
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState127 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABRECHAVES ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FLOAT _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | FUNCTION ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | NIL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | NOT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | PONTOPONTOPONTO ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | QUADRADO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | STRING _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | SUBTRACAO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128)
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState127 in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_comma_exp_rule_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (unit) =                 ( ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (x : (unit)) = _v in
            let _v : (unit option) =     ( Some x ) in
            _menhir_goto_option_comma_exp_rule_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129)
    | MenhirState170 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState171 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | BREAK ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | DO ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | DOISDOISPONTOS ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | FOR ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | FUNCTION ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | GOTO ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | IF ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | LOCAL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | PONTOEVIRGULA ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | REPEAT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | ELSE | ELSEIF | END | RETURN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171)
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | ABREPARENTESE | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (unit))), _, (_4 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                            ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184)
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | DIFERENTE ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | DIVISAO ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState193 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | BREAK ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | DO ->
                _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | DOISDOISPONTOS ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | FOR ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | FUNCTION ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | GOTO ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | IF ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | LOCAL ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | PONTOEVIRGULA ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | REPEAT ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | WHILE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | END | RETURN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194)
        | EXPONENCIACAO ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | IGUALDADE ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | MAIOR ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | MAIORIGUAL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | MENOR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | MENORIGUAL ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | MODULO ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | MULTIPLICACAO ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | OR ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | PONTOPONTO ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | SOMA ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | SUBTRACAO ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_fieldlist_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FECHACHAVES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit option))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) =                                       ( ) in
        (match _menhir_s with
        | MenhirState1 | MenhirState183 | MenhirState170 | MenhirState164 | MenhirState152 | MenhirState138 | MenhirState128 | MenhirState126 | MenhirState124 | MenhirState104 | MenhirState27 | MenhirState30 | MenhirState96 | MenhirState31 | MenhirState83 | MenhirState80 | MenhirState33 | MenhirState74 | MenhirState67 | MenhirState50 | MenhirState43 | MenhirState35 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) =                      ( ) in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | MenhirState143 | MenhirState37 | MenhirState42 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) =                      ( ) in
            _menhir_goto_args _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ATRIBUICAO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ABRECHAVES ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ABREPARENTESE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FALSE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FLOAT _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | FUNCTION ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | NIL ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NOT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PONTOPONTOPONTO ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | QUADRADO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | STRING _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | SUBTRACAO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TRUE ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
    | ABRECHAVES | ABRECOLCHETE | ABREPARENTESE | AND | DIFERENTE | DIVISAO | DOISPONTOS | EXPONENCIACAO | FECHACHAVES | IGUALDADE | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MODULO | MULTIPLICACAO | OR | PONTO | PONTOEVIRGULA | PONTOPONTO | SOMA | STRING _ | SUBTRACAO | VIRGULA ->
        _menhir_reduce114 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_goto_list_stat_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState147 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (unit))), _, (xs : (unit list))) = _menhir_stack in
        let _v : (unit list) =     ( x :: xs ) in
        _menhir_goto_list_stat_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState194 | MenhirState22 | MenhirState23 | MenhirState175 | MenhirState172 | MenhirState106 | MenhirState166 | MenhirState131 | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RETURN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABRECHAVES ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | FLOAT _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | FUNCTION ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | NIL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | NOT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | PONTOPONTOPONTO ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | QUADRADO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | STRING _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | SUBTRACAO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | ELSE | ELSEIF | END | EOF | PONTOEVIRGULA | UNTIL ->
                _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152)
        | ELSE | ELSEIF | END | EOF | UNTIL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_retstat_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VIRGULA ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ABREPARENTESE | ATRIBUICAO | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
        _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_reduce114 : _menhir_env -> 'ttv_tail * _menhir_state * (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (string))) = _menhir_stack in
    let _v : (unit) =                                              ( ) in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_ponto_id_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (string)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) =              ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PONTO ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | ABREPARENTESE | DOISPONTOS ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_virgula_id_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (string)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) =                ( ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VIRGULA ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ABREPARENTESE | ATRIBUICAO | BREAK | DO | DOISDOISPONTOS | ELSE | ELSEIF | END | EOF | FECHAPARENTESE | FOR | FUNCTION | GOTO | ID _ | IF | IN | LOCAL | PONTOEVIRGULA | REPEAT | RETURN | UNTIL | WHILE ->
            _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_stat : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | BREAK ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | DO ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | DOISDOISPONTOS ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | FOR ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | FUNCTION ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GOTO ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | IF ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LOCAL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | PONTOEVIRGULA ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | REPEAT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | ELSE | ELSEIF | END | EOF | RETURN | UNTIL ->
        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =          ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =               ( ) in
    _menhir_goto_unop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (string)) = _v in
    let _v : (unit) =            ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =              ( ) in
    _menhir_goto_unop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                     ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =         ( ) in
    _menhir_goto_unop _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =         ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (int) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (int)) = _v in
    let _v : (unit) =         ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (float) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (float)) = _v in
    let _v : (unit) =           ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =           ( ) in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | ABRECOLCHETE ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | ID _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | FECHACHAVES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState31 in
        let _v : (unit option) =     ( None ) in
        _menhir_goto_option_fieldlist_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState194 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState172 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState170 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState166 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState147 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState125 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit list) =     ( [] ) in
    _menhir_goto_list_stat_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | BREAK ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | DO ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | DOISDOISPONTOS ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | FOR ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | FUNCTION ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | GOTO ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | IF ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LOCAL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | PONTOEVIRGULA ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | REPEAT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | RETURN | UNTIL ->
        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =                   ( ) in
    _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce114 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (string)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (unit) =             ( ) in
        _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PONTO ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | ABREPARENTESE | DOISPONTOS ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run122 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState122 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ATRIBUICAO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState123 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ABRECHAVES ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | ABREPARENTESE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FALSE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | FLOAT _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | FUNCTION ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | INT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | NIL ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | NOT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | PONTOPONTOPONTO ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | QUADRADO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | STRING _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | SUBTRACAO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | TRUE ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
        | VIRGULA ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | IN ->
            _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122

and _menhir_run132 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOISDOISPONTOS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), (_2 : (string))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) =                                      ( ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            let _v : (unit) =           ( ) in
            _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run135 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | BREAK ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | DO ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | DOISDOISPONTOS ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | FOR ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | FUNCTION ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | GOTO ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
    | IF ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | LOCAL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | PONTOEVIRGULA ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | REPEAT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | END | RETURN ->
        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135

and _menhir_run136 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) =           ( ) in
    _menhir_goto_stat _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABRECHAVES ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FALSE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | FLOAT _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | FUNCTION ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | NIL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | PONTOPONTOPONTO ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | QUADRADO ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | STRING _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | SUBTRACAO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | TRUE ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and chunk : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ABREPARENTESE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | BREAK ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DO ->
        _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DOISDOISPONTOS ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FOR ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUNCTION ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | GOTO ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LOCAL ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PONTOEVIRGULA ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | REPEAT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF | RETURN ->
        _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)
  

