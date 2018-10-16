open Base


type student = {
  first_name: string;
  last_name: string;
  age: int;
}

val sort_by_first_name:  student list -> student list

val sort_by_last_name: student list -> student list

val sort_by_age: student list -> order:int -> student list