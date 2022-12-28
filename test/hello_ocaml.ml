open OUnit2

let suite = "HelloOCamlTests" >:::
  Test_safe.tests

let () = run_test_tt_main suite
