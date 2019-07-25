  .text
	.globl _min_caml_start
_min_caml_start:
  addiu $sp,$sp,-8 # $sp の値 (7ffffdbc => 7fffdb4)
	sw $ra,4($sp)    # (7fffdb8) = $ra の値
	sw $fp,0($sp)    # (7fffdb4) = $fp の値

	li $a0,0x11
	li $a1,0x22
	jal my_add
	nop

	move $a0,$v0
	jal min_caml_print_int
	nop

	jal min_caml_exit
	nop

	# exit しちゃうのでエピローグは不要
	# lw $fp,0($sp)
	# lw $ra,4($sp)
  # addiu $sp,$sp,8
	# jr $ra
	# nop


# my_add
my_add:
  addu $v0,$a0,$a1
	jr $ra
	nop


## my libmincaml.S (for SPIM)

#	print_int
	.text
	.align 	2
	.globl	min_caml_print_int
min_caml_print_int:
  addiu $sp,$sp,-8 # $sp の値 (7ffffdbc => 7fffdb4)
	sw $ra,4($sp)    # (7fffdb8) = $ra の値
	sw $fp,0($sp)    # (7fffdb4) = $fp の値

  li $v0,1
	syscall

	lw $fp,0($sp)
	lw $ra,4($sp)
  addiu $sp,$sp,8
	jr $ra
	nop


# exit
	.globl min_caml_exit
min_caml_exit:
  li $v0, 10
  syscall




# 	.text
# 	.globl _min_caml_start
# 	.align 2
# my_add.4:
# 	add	r2, r2, r5
# 	blr
# _min_caml_start: # main entry point
# 	mflr	r0
# 	stmw	r30, -8(r1)
# 	stw	r0, 8(r1)
# 	stwu	r1, -96(r1)
# #	main program starts
# 	li	r2, 10
# 	li	r5, 20
# 	mflr	r31
# 	stw	r31, 4(r3)
# 	addi	r3, r3, 8
# 	bl	my_add.4
# 	subi	r3, r3, 8
# 	lwz	r31, 4(r3)
# 	mtlr	r31
# 	mflr	r31
# 	stw	r31, 4(r3)
# 	addi	r3, r3, 8
# 	bl	min_caml_print_int
# 	subi	r3, r3, 8
# 	lwz	r31, 4(r3)
# 	mtlr	r31
# #	main program ends
# 	lwz	r1, 0(r1)
# 	lwz	r0, 8(r1)
# 	mtlr	r0
# 	lmw	r30, -8(r1)
# 	blr
