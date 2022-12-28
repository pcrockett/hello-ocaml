let message cli_args =
  let name = match cli_args |> Util.join ~separator:" " with
    | "" -> "World"
    | joined -> joined
  in
    "Hello, " ^ name ^ "!"
