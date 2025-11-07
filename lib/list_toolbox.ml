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

