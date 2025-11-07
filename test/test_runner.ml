open Base
open List_toolbox

let int_list_testable = Alcotest.(list int)

(*1. test dedup*)
let test_dedup_simple () =
    let input = [1; 1; 2; 3; 3; 3; 1] in
    let expected = [1; 2; 3; 1] in
    Alcotest.(check int_list_testable) "simple dedup" expected (dedup input ~compare:Int.compare) 

let test_dedup_empty () =
    Alcotest.(check int_list_testable) "empty list" [] (dedup [] ~compare:Int.compare)

let test_dedup_one_el () =
    let input = [1] in
    let expected = [1] in
    Alcotest.(check int_list_testable) "one element list" expected (dedup input ~compare:Int.compare)

(*2. test find_peak*)
let test_find_peak_simple () =
  let input = [1; 2; 5; 1; 4; 7; 3] in
  let expected = Some 5 in
  Alcotest.(check (option int)) "simple peak" expected (find_peak input)

let test_find_peak_none () =
  let input = [1; 2; 3; 4; 5] in
  let expected = None in
  Alcotest.(check (option int)) "no peak increasing" expected (find_peak input)

let test_find_peak_empty () = 
    Alcotest.(check (option int)) "empty list" None (find_peak [])

let () =
  Alcotest.run "List_toolbox Tests" [
    ("dedup", [
      Alcotest.test_case "Simple dedup" `Quick test_dedup_simple;
      Alcotest.test_case "Empty list" `Quick test_dedup_empty;
      Alcotest.test_case "One element list" `Quick test_dedup_one_el;
    ]);
    ("find_peak", [
      Alcotest.test_case "Simple peak" `Quick test_find_peak_simple;
      Alcotest.test_case "No peak" `Quick test_find_peak_none;
      Alcotest.test_case "Empty list" `Quick test_find_peak_empty;
    ]);
  ]