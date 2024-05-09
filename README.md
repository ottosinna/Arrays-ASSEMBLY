# Arrays-ASSEMBLY

Arrays

step-by-step breakdown:

Initialization:
addi $t7, $zero, 0: Sets register $t7 to 0.
addi $t2, $zero, 4: Sets register $t2 to 4.
Loop (add:):
lw $t0, 0($s0): Load word from memory address pointed by $s0 into $t0.
mul $t0, $t0, $t0: Multiply the value in $t0 by itself.
sw $t0, 0($s1): Store the result in memory address pointed by $s1.
addi $s0, $s0, 4: Increment the address in $s0 by 4 bytes (assuming $s0 points to an array of words).
addi $s1, $s1, 4: Increment the address in $s1 by 4 bytes (assuming $s1 points to another array of words).
Loop control:
addi $t7, $t7, 1: Increment $t7 by 1.
beq $t7, $t2, exit: Branch to exit if $t7 equals $t2.
j add: Jump back to the add label to repeat the loop.
Exit:
exit:: This is the label where the code exits the loop.
