.data
address1: .word 0x00400000
message1: .asciiz "Provide an integer: "
message2: .asciiz "Provide another integer: "
message3: .asciiz "Sum is:"

.text
main:	

	lw $t0, address1
	
	li $v0, 4
	la $a0, message1
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	li $v0, 4
	la $a0, message2
	syscall
	
	li $v0, 5
	syscall
	
	move $s1, $v0
	
	add $s3, $s0, $s1
	
	li $v0, 4
	la $a0, message3
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall
		
	.ktext 0x80000180
	
	mtc0 $t0, $14
	
	li $v0, 4
	la $a0, str
	syscall
	
	li $v0, 4
	la $a0, nl
	syscall
	
	eret
	
	.kdata 
	str: .asciiz "Try again!"	
	nl: .asciiz "\n"
	
		
	
	
	
	