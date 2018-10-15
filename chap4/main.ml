open Base
open Stdio


let () =
  let students = (Utils.from_list [("Rihab", "Do"); ("Seif", "Ab"); ("Amir",  "Bc"); ("Anssam", "Ca");]) in
  (Utils.sort_by_lastname students) 
  |> Utils.to_list 
  |> List.iter ~f:(fun (first, last) -> (printf "%s: %s\n" first last))