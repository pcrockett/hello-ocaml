(** Take raw command-line arguments and make them suitable for the application to use
  @return Sequence of strings the application should process
*)
let sanitize_args cli_args = cli_args |> Array.to_seq |> Seq.drop 1
