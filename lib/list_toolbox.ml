(*dedup (l: 'a list) ~compare:('a -> 'a -> int) : 'a list: Removes consecutive duplicates from a list.
Input: [1; 1; 2; 3; 3; 3; 1]
Output: [1; 2; 3; 1]

Hint: Use List.fold. Your accumulator can be a (list * 'a option) to remember the last element seen.*)
open Base

let dedup lis ~compare =
  let f x acc =
    match acc with
    | [] -> [x]
    | y :: _ -> if ((compare y x) = 0) then acc else x :: acc
  in
    List.fold_right lis ~f:f ~init:[] ;;
  
  
let rec find_peak lis =
  match lis with
  | x :: y :: z :: lis' -> if y>x && y>z then Some y else find_peak (y :: z :: lis')
  | _ -> None ;;

