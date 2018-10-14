(*  Anonymous functions *)
(* let strs =
  let transforms = [String.capitalize_ascii; String.uppercase_ascii] in
  let l = List.map (fun f -> f "hello world!") transforms in
  String.concat "\n" l
;;
print_endline strs;; *)

(* currying 0 *)
(* let sum a b =  a + b;;
let sum5 = sum 5;;
print_int (sum5 2);;
print_char '\n';; *)


(* currying 1 *)
(* let inc = (+) 1;;
print_int (inc 3);;
print_char '\n';; *)


(* labeled functions *)
(* let getFirst ~first ~second = first;;
print_int (getFirst ~first:1  ~second:2);;
print_char '\n';;
print_int (getFirst ~second:2 ~first:1);;
print_char '\n';; *)

