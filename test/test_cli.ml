open OUnit2
open Lib

let evaluate_seq = Seq.fold_left (fun a b -> Array.append a [| b |]) [||]

let assert_sanitized_args expected_result args_to_test =
  args_to_test |> Cli.sanitize_args |> evaluate_seq
  |> assert_equal expected_result

let sanitize_args__always__removes_program_name _ =
  [||] |> assert_sanitized_args [||];
  [| "program_name" |] |> assert_sanitized_args [||];
  [| "program_name"; "bob" |] |> assert_sanitized_args [| "bob" |];
  [| "program_name"; "bob"; "is"; "great" |]
  |> assert_sanitized_args [| "bob"; "is"; "great" |]

let tests =
  [
    "Cli.sanitize_args - always - removes program name"
    >:: sanitize_args__always__removes_program_name;
  ]
