
let parse s =
  let lexbuf = Lexing.from_string s in
  let _ = Parser.prog Lexer.read lexbuf in
  print_endline "Ok"


let parse_arq arq = 
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let _ = Parser.prog Lexer.read lexbuf in
  print_endline "Ok"
;;

let testes () =
  assert (() = parse "3");
  assert (() = parse "a > 3");
  assert (() = parse "3.2");
  (*assert (() = parse "if 3 > 5 then 3 else 5=3 end"); 
  assert (() = parse "print 'teste'");*)
  assert (() = parse "while 3 do 3");
  assert (() = parse "a = 4");
  assert (() = parse "if a > 4 then 3 end");


   


      

