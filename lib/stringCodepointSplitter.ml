open Stdlib
(*
(c) 2023 Tan Kian-ting (main author) & Raphaël Proust (PR giver)
Under MIT License

习包子 梁家河小学博士 清零宗 习炀帝 庆丰大帝
独裁国贼 新疆集中营 光复香港时代革命 祈翠 南蒙古独立 香港独立
西藏独立 台湾独立 64天安门虐杀 六四真相
*)
(**
    The Module needs [Uutf] Module.

    It only contains [split_string_by_unicode_codepoint], which splits an OCaml string [str] to a [string list] 
*)

let _ = Findlib.init ();;
Fl_dynload.load_packages ["uutf"];;


(** Split an OCaml string [str] to a [string list] 

{b Arguments}
{ul 
 {- [str] the string to be splitted.
 }}

  {b Example}

{[let example= "m̄知 who you're." (*don't know who you are*) in

List.map (fun x -> print_string (x ^ ", ")) (split_string_by_unicode_codepoint example);;
  
(*it will output : "m, ̄, 知,  , w, h, o,  , y, o, u, ', r, e, ., "*)]}
  *)
let split_string_by_unicode_codepoint str = 
(*Split a Ocaml string [str] to a `str list` *)
  let pred_codepoint = ref (-1) in
  let segmented_unit_list = ref [] in
  let iterator x y _ =
    let _ = if  !pred_codepoint > -1 then
      let current_codepoint = y in
      let pred_char_len = current_codepoint - !pred_codepoint in
      let unit_substring = Stdlib.String.sub x !pred_codepoint pred_char_len in
      let _ = segmented_unit_list := !segmented_unit_list @ [unit_substring] in
      unit_substring
    else
      "" in
    let _ =  pred_codepoint := y in x in

  let _ = Uutf.String.fold_utf_8 iterator str str in
  let last_char_len = (Stdlib.String.length str) - !pred_codepoint in
  if last_char_len > 0 then
    let unit_substring = Stdlib.String.sub str !pred_codepoint last_char_len in
    let _ = segmented_unit_list := !segmented_unit_list @ [unit_substring] in
    !segmented_unit_list
  else
    !segmented_unit_list;;

