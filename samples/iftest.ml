let rec double x = x + x in
let x = double 5 in
let y = if x >= 10 then 5963 else 4649 in
print_int y; print_newline ()
