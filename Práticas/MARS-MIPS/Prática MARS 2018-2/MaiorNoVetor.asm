lw $t1,0($gp) # Maior elemento
addi $t2,$gp,8 # Contador
lw $t3,0($t2) # Elemento A[i]

b loop

loop:
	lw $t3,0($t2)
	beqz $t3,FIM
	bgt $t3,$t1,trocaMaior
	addi $t2,$t2,4
	j loop
	
trocaMaior:
	lw $t1,0($t2)
	b loop
	
FIM: