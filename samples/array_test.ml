let a = Array.make 3 0 in
let _ = a.(0) <- 4649 in
let _ = a.(1) <- 5963 in
let _ = a.(2) <- 246911 in
let p = 3.14 in
let b = (Array.make 2 0.0) in
let _ = b.(0) <- p in
let _ = b.(1) <- p *. p in
(* print int array *)
print_int a.(0); (* => 4649 *)
print_newline ();
print_int a.(1); (* => 5963 *)
print_newline ();
print_int a.(2); (* => 5963 *)
print_newline ();
(* print float array *)
print_float b.(0); (* => 3.14 *)
print_newline ();
print_float b.(1); (* => 3.14 *)
print_newline ()
