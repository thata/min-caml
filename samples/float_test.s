	.data
	.literal8
	.align 3
l.78:	 # 10.000000
	.long	0
	.long	1076101120
	.align 3
l.77:	 # 25.132000
	.long	-1065151889
	.long	1077486026
	.align 3
l.76:	 # 3.990000
	.long	515396076
	.long	1074785157
	.align 3
l.75:	 # 3.141500
	.long	-1065151889
	.long	1074340298
	.text
	.globl _min_caml_start
	.align 2
_min_caml_start: # main entry point
	add x28, x0, 0
	add x27, x1, 0
	str fp, [x28, 0]
	str lr, [x28, 8]
	add x28, x28, 16
#	main program starts
	adrp x26, l.75@PAGE
	ldr d0, [x26, l.75@PAGEOFF]
	mov x26, lr
	str x26, [x28, 0]
	add x28, x28, 8
	bl _min_caml_int_of_float
	sub x28, x28, 8
	ldr x26, [x28, 0]
	mov lr, x26
	adrp x26, l.76@PAGE
	ldr d0, [x26, l.76@PAGEOFF]
	str x0, [x28, 0]
	mov x26, lr
	str x26, [x28, 8]
	add x28, x28, 16
	bl _min_caml_int_of_float
	sub x28, x28, 16
	ldr x26, [x28, 8]
	mov lr, x26
	adrp x26, l.77@PAGE
	ldr d0, [x26, l.77@PAGEOFF]
	str x0, [x28, 8]
	mov x26, lr
	str x26, [x28, 16]
	add x28, x28, 24
	bl _min_caml_int_of_float
	sub x28, x28, 24
	ldr x26, [x28, 16]
	mov lr, x26
	mov x1, 10
	str x0, [x28, 16]
	mov x0, x1
	mov x26, lr
	str x26, [x28, 24]
	add x28, x28, 32
	bl _min_caml_float_of_int
	sub x28, x28, 32
	ldr x26, [x28, 24]
	mov lr, x26
	adrp x26, l.78@PAGE
	ldr d1, [x26, l.78@PAGEOFF]
	fadd	d0, d0, d1
	mov x26, lr
	str x26, [x28, 24]
	add x28, x28, 32
	bl _min_caml_int_of_float
	sub x28, x28, 32
	ldr x26, [x28, 24]
	mov lr, x26
	ldr x1, [x28, 0]
	str x0, [x28, 24]
	mov x0, x1
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_int
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_newline
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	ldr x0, [x28, 8]
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_int
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_newline
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	ldr x0, [x28, 16]
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_int
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_newline
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	ldr x0, [x28, 24]
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_int
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_print_newline
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
#	main program ends
	sub x28, x28, 16
	ldr fp, [x28, 0]
	str lr, [x28, 8]
	ret
