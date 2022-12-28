open OUnit2

let suite = "HelloOCamlTests" >:::
  Test_safe.tests
    @ Test_util.tests

let () = run_test_tt_main suite
