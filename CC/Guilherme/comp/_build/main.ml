let parse_arq arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let _ = Parser.chunk Lualexer.token lexbuf in
  print_endline "Ok"
;;
