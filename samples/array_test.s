	.data
	.literal8
	.align 3
l.94:	 # 9.859600
	.long	2109687936
	.long	1076082717
	.align 3
l.92:	 # 0.000000
	.long	0
	.long	0
	.align 3
l.91:	 # 3.140000
	.long	1374389535
	.long	1074339512
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
	mov x0, 3
	mov x1, 0
	mov x26, lr
	str x26, [x28, 0]
	add x28, x28, 8
	bl _min_caml_create_array
	sub x28, x28, 8
	ldr x26, [x28, 0]
	mov lr, x26
	mov x1, 4649
	str x1, [x0, 0]
	mov x1, 5963
	str x1, [x0, 8]
	mov x1, 50303
	movk x1, 3, lsl 16
	movk x1, 0, lsl 32
	movk x1, 0, lsl 48
	str x1, [x0, 16]
	adrp x26, l.91@PAGE
	ldr d0, [x26, l.91@PAGEOFF]
	mov x1, 2
	adrp x26, l.92@PAGE
	ldr d1, [x26, l.92@PAGEOFF]
	str x0, [x28, 0]
	str d0, [x28, 16]
	mov x0, x1
	fmov d0, d1
	mov x26, lr
	str x26, [x28, 32]
	add x28, x28, 40
	bl _min_caml_create_float_array
	sub x28, x28, 40
	ldr x26, [x28, 32]
	mov lr, x26
	ldr d0, [x28, 16]
	str d0, [x0, 0]
	adrp x26, l.94@PAGE
	ldr d0, [x26, l.94@PAGEOFF]
	str d0, [x0, 8]
	ldr x1, [x28, 0]
	ldr x2, [x1, 0]
	str x0, [x28, 32]
	mov x0, x2
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_int
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_newline
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	ldr x0, [x28, 0]
	ldr x1, [x0, 8]
	mov x0, x1
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_int
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_newline
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	ldr x0, [x28, 0]
	ldr x0, [x0, 16]
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_int
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_newline
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	ldr x0, [x28, 32]
	ldr d0, [x0, 0]
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_float
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_newline
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	ldr x0, [x28, 32]
	ldr d0, [x0, 8]
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_float
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
	mov x26, lr
	str x26, [x28, 40]
	add x28, x28, 48
	bl _min_caml_print_newline
	sub x28, x28, 48
	ldr x26, [x28, 40]
	mov lr, x26
#	main program ends
	sub x28, x28, 16
	ldr fp, [x28, 0]
	str lr, [x28, 8]
	ret
