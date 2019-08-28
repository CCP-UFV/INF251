lw $t0,0($gp)    # C[i]
lw $t1,0($gp)	 # A[i]
lw $t2,4($gp)    # B[i]
addi $t3,$gp,32   # Vetor C[i] começa no endreço de final 256
addi $t4,$gp,160 # Vetor A[i] começa no endereço de final 384
addi $t5,$gp,288 # Vetor B[i] começa no endereço de final 512

b loop

loop: # Label do C[i] = A[i] - B[i]
	lw $t1,0($t4)
	lw $t2,0($t5)
	beq $t1,$zero,FIM
	sub $t0,$t1,$t2 #  C[i] = A[i] - B[i]
	sw $t0,0($t3)
    addi $t3,$t3,4
	addi $t4,$t4,4
	addi $t5,$t5,4
	j loop
	
FIM: