let a = 3.1415 in
let b = int_of_float a in
let c = int_of_float ((2.5 +. 2.5) -. 1.01) in
let d = int_of_float (3.1415 +. 3.1415 +. 3.1415 +. 3.1415 +. 3.1415 +. 3.1415 +. 3.1415 +. 3.1415) in
let e = float_of_int 10 in
let f = int_of_float (e +. 10.0) in
print_int b;
print_newline ();
print_int c;
print_newline ();
print_int d;
print_newline ();
print_int f;
print_newline ()
