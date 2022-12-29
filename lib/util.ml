(** Join strings in a sequence. Like String.concat, but using sequences instead of lists.
  @param separator The separator to use between each string
  @param str_seq A sequence of strings
*)
let join ?(separator = "") str_seq =
  let word_accumulator a index b =
    match index with
      | 0 -> b
      | _ -> a ^ separator ^ b
  in
    Seq.fold_lefti word_accumulator "" str_seq
