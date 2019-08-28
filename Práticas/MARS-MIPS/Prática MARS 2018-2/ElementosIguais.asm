lw $t1,0($gp) # Elemento procurado
lw $t2,4($gp) # Resultado
addi $t3,$gp,12 # Contador
lw $t4,0($t3) # Elemento A[i]

b loop

loop:
	lw $t4,0($t3)
	beqz $t4,FIM
	addi $t3,$t3,4
	beq $t1,$t4,incrementa
	j loop
	
incrementa:
	addi $t2,$t2,1
	b loop
	
FIM: