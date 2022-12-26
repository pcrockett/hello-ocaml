open Hello

let panic err =
  prerr_endline (Printexc.to_string err);
  exit 1

let () =
  match SafeConsole.print_endline "Hello, World!" with
  | Error e -> panic e
  | Ok _ -> ()
