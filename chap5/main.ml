open Base
open Stdio


let () =
  let students = [
    { Students.first_name = "Rihab"; last_name = "Do"; age= 12}; 
    { first_name = "Seif"; last_name = "Fo"; age = 24}; 
    { first_name = "Amir"; last_name = "Bc"; age = 26}; 
    { first_name = "Anssam"; last_name = "Ca"; age = 19}; 
    ] in
  Students.sort_by_age ~order:1 students
  |> List.iter 
    ~f:(fun { Students.first_name = first_name; last_name; age } -> 
      (printf "%s | %s | %d\n" first_name last_name age))
  ;;