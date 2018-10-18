module NameModule = struct
  type t = {
    first_name: string;
    last_name: string
  }
end;;

type info = 
  | Name of {first_name: string; last_name: string}
  | Age of { age: int }
;;

let info_to_stirng = function
  | Name name -> Some (name.first_name ^ name.last_name)
  | _ -> None
;;