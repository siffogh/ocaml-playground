(* render a formatted table *)

let getWidths headers rows = 
  let headersWidths = List.map String.length headers in 
  List.fold_left 
    (fun acc row -> List.map2 max acc  (List.map String.length row))
    headersWidths
    rows
    ;;

let pad str width = " " ^ str ^ (String.make (width - String.length str + 1) ' ');;

let renderRow row widths = 
  let padded = List.map2 (fun str width -> pad str width) row widths in
  "|" ^ (String.concat "|" padded) ^ "|"
;;

let renderSeparatorRow widths =
  let spaces = List.map (fun width -> String.make (width + 2) ' ') widths in
  "|" ^ (String.concat "+" spaces) ^ "|"

let render_table headers rows =
  let widths = getWidths headers rows in
  let firstRow = renderRow headers widths in
  let secondRow = renderSeparatorRow widths in
  let otherRows = String.concat "\n" (List.map (fun row -> renderRow row widths) rows) in
  firstRow ^ "\n" ^ secondRow ^ "\n" ^ otherRows
  ;;

print_endline
  (render_table
     ["language";"architect";"first release"]
     [ ["Lisp" ;"John McCarthy" ;"1958"] ;
       ["C"    ;"Dennis Ritchie";"1969"] ;
       ["ML"   ;"Robin Milner"  ;"1973"] ;
       ["OCaml";"Xavier Leroy"  ;"1996"] ;
     ]);;