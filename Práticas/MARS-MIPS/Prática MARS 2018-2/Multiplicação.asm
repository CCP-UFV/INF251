# A x B
lw $t1,0($gp) # Lê A
lw $t2,4($gp) # Lê B
lw $t3,8($gp) # Contador
lw $t4,12($gp) # Resultado

bltz $t1,loopNegativo
jal loop

loop:
	beq $t1,$t3,FIM
	add $t4,$t4,$t1
	addi $t3,$t3,1
	bne $t2,$t3,loop
	
loopNegativo:
	beq $t1,$t3,FIM
	sub $t4,$t4,$t2
	sub $t3,$t3,1
	bne $t1,$t3,loopNegativo
FIM:
