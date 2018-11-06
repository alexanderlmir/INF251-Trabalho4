#Procurar quantas cópias de um elemento tem no vetor.  
#O termino é marcado com um elemento igual a 0.

addi $t2,$gp,4 # t2 ponteiro inicio vetor
lw $t1,0($gp) # t1 elemento que estamos procurando
li $t5,0 # quantidade de copias
loop: lw $t3,0($t2) # v[t2]
beq $t3,$zero, fim
addi $t2,$t2,4  # t2 += 4
beq $t3,$t1, achou # elemento = v[t2]
jal loop # proximo item 
achou: addi $t5,$t5,1 # achou mais um
jal loop # proximo item 
fim: sw $t5,0($gp) # grava qtd de copias no inicio (onde estava o elemento)
