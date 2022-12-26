let word_accumulator separator a index b =
  match index with
  | 0 -> b
  | _ -> a ^ separator ^ b

let join ?(separator = "") = Seq.fold_lefti (word_accumulator separator) ""
