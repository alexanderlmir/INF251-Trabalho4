#Exercio 6: Achar o maior de um vetor.  O termino é marcado com um elemento igual a 0
# t1 maior; t2 contador; t4 elemento Ai

addi $t2,$gp,4 # Endereco de GP
lw $t1, 4($gp) # t1 -> Primeiro elemento
lw $t4, 4($gp) # t4 -> Ai
loop: beq $t4,$zero, Fim  # if t2 = 0, FIM
lw $t4,4($t2)
addi $t2,$t2,4 # i++
slt $t5,$t4,$t1 #  t5 = 1 if t4 < t1 => t1 menor else 0
bne $t5,$zero, Cont # If t5 <> 0, t1 é maior, pula, else troca
addi $t1,$t4,0
Cont: jal loop
Fim: sw $t1,0($gp) # grava maior elem no inicio
