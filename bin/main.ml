open Lib

let err_message err = match err with
  | Sys_error msg -> msg
  | _ -> Printexc.to_string err

let handle err =
  match
    err |> err_message |> Safe.prerr_endline
  with _ -> 1

let sanitize_args = function
  | [|_|] -> Array.to_seq [|"World"|]
  | cli_args -> cli_args |> Array.to_seq |> Seq.drop 1

let hello_message cli_args = "Hello, " ^ (Util.join cli_args ~separator:" ") ^ "!"

let main args =
  match args |> sanitize_args |> hello_message |> Safe.print_endline with
    | Error err -> handle err
    | Ok _ -> 0

let () = Sys.argv |> main |> exit
