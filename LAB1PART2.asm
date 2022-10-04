	.text
	#sets the inputs to the according places
li	$v0,5
syscall
move	$t0,$v0	
li	$v0,5
syscall
move	$t1,$v0	
li	$v0,5
syscall
move	$t2,$v0

move	$a0,$t0
move	$a1,$t1
jal	mod
move	$a0, $v0
li	$v0, 1
syscall
li	$v0, 10
syscall


#divide  divides the a0 with a1 and puts the quotient to v0 logically 
	divide:
mul	$t8,$a0,$a1	#multiplying two of these for chacking if the result is negative
li	$t7,1
bgt	$t8,0,plusDiv
li	$t7,-1
	plusDiv:
	#takes the absolute values of the inputs
abs	$a0,$a0	
abs	$a1,$a1
	divideLoop:	#substract until the dividend until it is less then divisor and use a count to see quotient
blt	$a0, $a1,finDivide
addi	$t9,$t9,1
sub	$a0,$a0,$a1
j	divideLoop

	finDivide:
mul	$t9,$t9,$t7	#applying the sign to the output
move	$v0,$t9
jr	$ra

#divide is the same as divideForMod and the only difference is on mod we substract 1 if the quotient is negative and then return in v0

	divideForMod:
#divide  divides the a0 with a1 and puts the quotient to v0 logically 
mul	$t8,$a0,$a1	#multiplying two of these for chacking if the result is negative
li	$t7,1
bgt	$t8,0,plusDivForMod
li	$t7,-1
	plusDivForMod:
	#takes the absolute values of the inputs
abs	$a0,$a0	
abs	$a1,$a1
	divideLoopForMod:	#substract until the dividend until it is less then divisor and use a count to see quotient
blt	$a0, $a1,finDivideForMod
addi	$t9,$t9,1
sub	$a0,$a0,$a1
j	divideLoopForMod

	finDivideForMod:
mul	$t9, $t9, $t7	#applying the sign to the output
bge	$t9, 0, skip	
addi	$t9, $t9, -1
skip:
move	$v0,$t9
jr	$ra


	mod:
la	$t6,0($ra)
move	$t5,$a0
move	$t4,$a1

#calculating the formula for mod and returning to v0
jal	divideForMod
move	$t3,$v0
mul	$t7,$t4,$t3
sub	$v0, $t5, $t7
la	$ra,0($t6)
jr	$ra





