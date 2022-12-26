let result_wrap action = try Ok (action ()) with e -> Error e
let print_endline msg = result_wrap (fun () -> print_endline msg)
