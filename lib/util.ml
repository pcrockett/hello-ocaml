let join ?(separator = "") =
  let word_accumulator a index b =
    match index with
      | 0 -> b
      | _ -> a ^ separator ^ b
  in
    Seq.fold_lefti word_accumulator ""
