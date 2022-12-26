let wrap action = try Ok (action ()) with e -> Error e
let print_endline msg = wrap (fun () -> Stdlib.print_endline msg)
let prerr_endline msg = wrap (fun () -> Stdlib.prerr_endline msg)
