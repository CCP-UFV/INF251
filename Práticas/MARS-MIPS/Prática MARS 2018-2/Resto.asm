lw $t1,0($gp) # Carrega A
lw $t2,4($gp) # Carrega B
lw $t3,8($gp) # C : Resultado de B % A

la $t3,($t2) # Copia o valor para o resultado

j loop

loop:
	blt $t3,$t1,FIM   # Se for menor
	beqz $t3,FIM      # Se for 0, acaba
	sub $t3,$t3,$t1
	j loop

FIM:
