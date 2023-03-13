	.align 	2
LC0:
	.ascii	"%d\0"
	.align	2
LC1:
	.ascii 	"%lf\0"
	.align 	3
LC2:
	.long	1127219200
	.long	-2147483648

// create_array
// a0: number of elements
// a1: initial value
  .globl min_caml_create_array
min_caml_create_array:
  mv t2, a0  // t2 = number of elements
  mv a0, s11 // a0 = hp
min_caml_create_array_loop:
  // if number of elements = 0
  beq t2, zero, min_caml_create_array_exit
  // if number of elements > 0
  sw a1, 0(a0)
  addi s11, s11, 4
  addi t2, t2, -1
  j min_caml_create_array_loop
min_caml_create_array_exit:
  ret

// create_float_array
// a0: number of elements
// fa0: initial value
  .globl min_caml_create_float_array
min_caml_create_float_array:
  mv t2, a0  // t2 = number of elements
  mv a0, s11 // a0 = hp
min_caml_create_float_array_loop:
  // if number of elements = 0
  beq t2, zero, min_caml_create_float_array_exit
  // if number of elements > 0
  fsw fa0, 0(a0)
  addi s11, s11, 4
  addi t2, t2, -1
  j min_caml_create_array_loop
min_caml_create_float_array_exit:
  ret
