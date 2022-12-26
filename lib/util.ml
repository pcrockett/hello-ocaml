let word_accumulator separator a index b =
  match index with
  | 0 -> b
  | _ -> a ^ separator ^ b

let join ?(prefix = "") ?(separator = "") ?(suffix = "") sequence =
  prefix ^ (
    Seq.fold_lefti
      (word_accumulator separator)
      ""
      sequence
  ) ^ suffix
