open Lib

let message err = match err with
  | Sys_error msg -> msg
  | _ -> Printexc.to_string err

let handle err =
  match
    err |> message |> Safe.prerr_endline
  with _ -> 1

let main msg =
  match Safe.print_endline msg with
    | Error err -> handle err
    | Ok _ -> 0

let () = "Hello, World" |> main |> exit
