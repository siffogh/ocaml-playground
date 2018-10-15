open Base


type students

val empty: students

val to_list: students -> (string * string) list

val from_list: (string * string) list -> students

val sort_by_firstname:  students -> students

val sort_by_lastname: students -> students