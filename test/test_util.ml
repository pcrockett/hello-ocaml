open OUnit2
open Lib

let join__empty_seq__returns_empty_string _ =
  List.to_seq []
    |> Util.join ~separator:"this is not an empty string!"
    |> assert_equal ""

let join__single_item__separator_not_used _ =
  List.to_seq ["Hello"]
    |> Util.join ~separator:"this is not an empty string!"
    |> assert_equal "Hello"

let join__n_items__separator_between_words _ =
  List.to_seq ["Hello"; "Bob"]
    |> Util.join ~separator:"---"
    |> assert_equal "Hello---Bob"

let join__n_items_default_separator__no_separator_used _ =
  List.to_seq ["Hello"; "Bob"]
    |> Util.join
    |> assert_equal "HelloBob"

let tests = [
  "Util.join - empty seq - returns empty string" >:: join__empty_seq__returns_empty_string;
  "Util.join - single item - separator not used" >:: join__single_item__separator_not_used;
  "Util.join - N items - separator between words" >:: join__n_items__separator_between_words;
  "Util.join - N items no separator - no separator used" >:: join__n_items_default_separator__no_separator_used
]
