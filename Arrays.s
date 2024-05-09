​​addi $t7, $zero, 0
addi $t2, $zero, 4

add:
    lw $t0, 0($s0)
    mul $t0, $t0, $t0

    sw $t0, 0($s1)

    addi $s0, $s0, 4
    addi $s1, $s1, 4

    addi $t7, $t7, 1
    beq $t7, $t2, exit
    j add

exit:

