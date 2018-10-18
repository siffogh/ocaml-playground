open Base

type student = {
  first_name: string;
  last_name: string;
  age: int;
}

type order = ASC | DESC


let sort_by_first_name sl = 
  match sl with
  | [] | [_]  -> sl
  | l ->  List.sort ~compare:(fun a b-> String.compare a.first_name b.first_name) l
  ;;


let sort_by_last_name sl = 
  match sl with
  | [] | [_]  -> sl
  | l ->  List.sort ~compare:(fun a b -> String.compare a.last_name b.last_name)  l
  ;;

let sort_by_age sl ~order =
  match sl with
  | [] | [_]  -> sl
  | l ->  List.sort 
    ~compare:(fun a b -> 
                 match order with
                 | DESC ->  Int.descending a.age b.age 
                 | ASC -> Int.ascending a.age b.age)
    l
  ;;