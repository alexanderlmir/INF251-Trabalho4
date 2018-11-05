#Exercio 0: Menor - A < B, grava menor

lw $t1, 0 ($gp) #  Ler A para t1 = mem(gp+0)
lw $t2, 4 ($gp) # Ler B  para t2 = mem(gp+8).
slt  $t3,$t1,$t2 #  t1 = 1 if  t1 < t2 = A  <  B; else 0
beq $t3,$t0, MenorB #  If t3 = 0, pula MenorB
sw $t1,8($gp) # mem(gp+8) ? A;
j FIM
MenorB: sw $t2,8($gp) # mem(r2+8) ? B;
FIM: nop
