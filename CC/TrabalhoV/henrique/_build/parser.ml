exception Error

type token = 
  | WRITE
  | WHILE
  | VIRGULA
  | UNTIL
  | TRUE
  | THEN
  | SUBTRACAO
  | RETURN
  | REPEAT
  | PONTOTRIPLO
  | PONTOEVIRGULA
  | PONTODUPLO
  | PONTO
  | OR
  | NOT
  | NIL
  | NAOEQUIVALENTE
  | MULTIPLICACAO
  | MODULO
  | MENOROUIGUAL
  | MENOR
  | MAIOROUIGUAL
  | MAIOR
  | LOCAL
  | INT of (int)
  | IN
  | IGUAL
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
  | EQUIVALENTE
  | EOF
  | END
  | ELSEIF
  | ELSE
  | DOISPOTNOS
  | DOISPONTOSDUPLO
  | DO
  | DIVISAO
  | COMPRIMENTO
  | BREAK
  | ASPASSIMPLES
  | AND
  | ADICAO
  | ABREPARENTESE
  | ABRECOLCHETE
  | ABRECHAVES

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
  | MenhirState50
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState28
  | MenhirState27
  | MenhirState16
  | MenhirState15
  | MenhirState14
  | MenhirState10
  | MenhirState8
  | MenhirState6
  | MenhirState5
  | MenhirState3
  | MenhirState2
  | MenhirState0

  

let _eRR =
  Error

let rec _menhir_goto_comparacao : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_exprAritmetica : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_goto_loopWhile : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =               ( ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                  ( ) in
    _menhir_goto_exprAritmetica _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                   ( ) in
    _menhir_goto_comparacao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                      ( ) in
    _menhir_goto_exprAritmetica _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                 ( ) in
    _menhir_goto_comparacao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =          ( ) in
    _menhir_goto_comparacao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                 ( ) in
    _menhir_goto_comparacao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =          ( ) in
    _menhir_goto_comparacao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                ( ) in
    _menhir_goto_comparacao _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                ( ) in
    _menhir_goto_exprAritmetica _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =               ( ) in
    _menhir_goto_exprAritmetica _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_atribuicao : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =                 ( ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce14 : _menhir_env -> 'ttv_tail * _menhir_state * (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
    let _v : (unit) =               ( ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce13 : _menhir_env -> 'ttv_tail * _menhir_state * (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
    let _v : (unit) =        ( ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FLOAT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | IF ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | RETURN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | TRUE ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | WHILE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | WRITE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | ADICAO | ASPASSIMPLES | DIVISAO | DO | END | EOF | EQUIVALENTE | MAIOR | MAIOROUIGUAL | MENOR | MENOROUIGUAL | MULTIPLICACAO | NAOEQUIVALENTE | SUBTRACAO | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            let _v : (unit) =                   ( ) in
            _menhir_goto_atribuicao _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
            let _v : (unit) =                               ( ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
            let _v : (unit) =                           ( ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _, _), _, _) = _menhir_stack in
        let _v : (unit) =                        ( ) in
        _menhir_goto_atribuicao _menhir_env _menhir_stack _menhir_s _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState32 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | FALSE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | FLOAT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | IF ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | TRUE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | WHILE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | WRITE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState34 in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, _), _), _, _) = _menhir_stack in
            let _v : (unit) =                           () in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
            let _v : (unit) =               ( ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
            let _v : (unit) =                  ( ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, _), _, _) = _menhir_stack in
            let _v : (unit) =                      ( ) in
            _menhir_goto_loopWhile _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState41 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | FALSE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | FLOAT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | IF ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | TRUE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | WHILE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | WRITE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, _), _), _, _) = _menhir_stack in
            let _v : (unit) =                        ( ) in
            _menhir_goto_loopWhile _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | ASPASSIMPLES | DO | END | EOF | FALSE | FLOAT _ | ID _ | IF | INT _ | NOT | RETURN | THEN | TRUE | WHILE | WRITE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, _), _, _) = _menhir_stack in
            let _v : (unit) =                           ( ) in
            _menhir_goto_loopWhile _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ASPASSIMPLES ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState47 in
            let _ = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
            let _v : (unit) =                                             ( ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADICAO ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DIVISAO ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState50 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            let _v : (unit) =              () in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _1 = _v in
            Obj.magic _1
        | EQUIVALENTE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MAIOR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MAIOROUIGUAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MENOR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MENOROUIGUAL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MULTIPLICACAO ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NAOEQUIVALENTE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | SUBTRACAO ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | _ ->
        _menhir_fail ()

and _menhir_goto_booleano : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState2 | MenhirState45 | MenhirState42 | MenhirState39 | MenhirState5 | MenhirState6 | MenhirState8 | MenhirState33 | MenhirState10 | MenhirState14 | MenhirState15 | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | FALSE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | FLOAT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | IF ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | TRUE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | WHILE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | WRITE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
        | ADICAO | DIVISAO | EQUIVALENTE | MAIOR | MAIOROUIGUAL | MENOR | MENOROUIGUAL | MULTIPLICACAO | NAOEQUIVALENTE | SUBTRACAO ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_discard : _menhir_env -> token =
  fun _menhir_env ->
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = _menhir_env._menhir_lexer lexbuf in
    _menhir_env._menhir_token <- _tok;
    _menhir_env._menhir_startp <- lexbuf.Lexing.lex_start_p;
    _menhir_env._menhir_endp <- lexbuf.Lexing.lex_curr_p;
    let shifted = Pervasives.(+) _menhir_env._menhir_shifted 1 in
    if Pervasives.(>=) shifted 0 then
      _menhir_env._menhir_shifted <- shifted;
    _tok

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | ASPASSIMPLES ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | FALSE ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FLOAT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | INT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | NOT ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | RETURN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | TRUE ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | WHILE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | WRITE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState3 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _tok = _menhir_discard _menhir_env in
        (match _tok with
        | DO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _tok = _menhir_discard _menhir_env in
            (match _tok with
            | FALSE ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | FLOAT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | IF ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | INT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
            | NOT ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | RETURN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | TRUE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | WHILE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | WRITE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
        | IGUAL ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | ADICAO | DIVISAO | EQUIVALENTE | MAIOR | MAIOROUIGUAL | MENOR | MENOROUIGUAL | MULTIPLICACAO | NAOEQUIVALENTE | SUBTRACAO ->
            _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =          ( ) in
    _menhir_goto_booleano _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (int) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =         ( ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    match _tok with
    | IGUAL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
    | ADICAO | ASPASSIMPLES | DIVISAO | DO | END | EOF | EQUIVALENTE | FALSE | FLOAT _ | ID _ | IF | INT _ | MAIOR | MAIOROUIGUAL | MENOR | MENOROUIGUAL | MULTIPLICACAO | NAOEQUIVALENTE | NOT | RETURN | SUBTRACAO | THEN | TRUE | WHILE | WRITE ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (float) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =           ( ) in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (unit) =          ( ) in
    _menhir_goto_booleano _menhir_env _menhir_stack _menhir_s _v

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_startp = lexbuf.Lexing.lex_start_p;
      _menhir_endp = lexbuf.Lexing.lex_curr_p;
      _menhir_shifted = max_int;
      } in
    Obj.magic (let _menhir_stack = () in
    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FLOAT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | NOT ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WHILE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WRITE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)



