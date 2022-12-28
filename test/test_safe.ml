open OUnit2
open Lib

let wrap__no_exception__returns_ok _ =
  match Safe.wrap (fun () -> "Yay") with
    | Ok msg -> assert_equal "Yay" msg
    | Error _ -> assert_failure "Returned Error!"

exception CustomException

let wrap__exception_thrown__returns_error _ =
  match Safe.wrap (fun () -> raise CustomException) with
    | Error _ -> ()
    | Ok _ -> assert_failure "Returned Ok!"

let tests = [
  "Safe.wrap - no exception - returns ok" >:: wrap__no_exception__returns_ok;
  "Safe.wrap - exception thrown - returns error" >:: wrap__exception_thrown__returns_error
]
