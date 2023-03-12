let a = 1.23 in
let b = 2.45 in
let rec test1 x y =
  (* IfFEq で真の場合 *)
  if x = y then
    print_int 1
  else
    print_int 0 in
let rec test2 x y =
  (* IfFEq で偽の場合 *)
  if x = y then
    print_int 0
  else
    print_int 1 in
test1 a a;
test2 a b;
print_newline ()
