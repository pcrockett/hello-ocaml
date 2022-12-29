(** Run a function and return a Result. Guaranteed not to throw exceptions.
  @return Result.Ok if no exceptions, Result.Error if an exception is thrown
*)
let wrap action = try Ok (action ()) with e -> Error e

(** Runs Stdlib.print_endline, except it returns a Result rather than throwing exceptions *)
let print_endline msg = wrap (fun () -> Stdlib.print_endline msg)

(** Runs Stdlib.prerr_endline, except it returns a Result rather than throwing exceptions *)
let prerr_endline msg = wrap (fun () -> Stdlib.prerr_endline msg)
