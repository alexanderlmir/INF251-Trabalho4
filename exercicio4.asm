#Exercio 4: Resto da divisao - C = B % A

li $t4,0
lw $t3,8($gp)
lw $t2,0($gp)
# Divisao t3/t2
loop: sub $t3,$t3,$t2 # t3 = t3 - t2
slt $t5,$t3,$t2 # t5 = 1, se t3 < t2
bne $t5,$zero, fim # t5 <> 0 ?
jal loop # subtrai mais uma vez t2 de t3...até t3 < t2
fim: sw $t3,4($gp)
