open Lib

let err_message err = match err with
  | Sys_error msg -> msg
  | _ -> Printexc.to_string err

(** Write a "fatal" error message to stderr. If there's _another_ error while writing to stderr, swallow it.
  @return the exit code the program should exit with
*)
let handle err =
  err |> err_message |> Safe.prerr_endline |> ignore;
  1

let main args =
  match args |> Hello.message |> Safe.print_endline with
    | Error err -> handle err
    | Ok _ -> 0

let () = Sys.argv |> Cli.sanitize_args |> main |> exit
