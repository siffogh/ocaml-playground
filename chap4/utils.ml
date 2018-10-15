open Base

type students = (string * string) list

let empty = [];;
let to_list sl = sl;;
let from_list sl = sl;;
let sort_by_firstname sl = 
  match to_list sl with
  | [] | [_]  -> sl
  | l -> 
      to_list(l)
      |> List.sort ~compare:(fun (a, _) (b, _) -> String.compare a b) 
      |> from_list
  ;;

let sort_by_lastname sl = 
  match to_list sl with
  | [] | [_]  -> sl
  | l -> 
      to_list(l)
      |> List.sort ~compare:(fun (_, a) (_, b) -> String.compare a b) 
      |> from_list
  ;;