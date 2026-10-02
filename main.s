.data
out:   .space 12
alpha: .word 5
beta:  .word 15
pair:  .word 20, 35
done:  .asciiz "Program completed\n"

.text
.globl main
main:
    # TODO 1: Load alpha, add 3, store to out + 0

la t0, alpha
lw t1, 0(t0)
addi t1, t1, 3
la t2, out
sw t1, 0(t2)

    # TODO 2: Load beta, add 9, store to out + 4

la t0, beta
lw t1, 0(t0)
addi t1, t1, 9
la t2, out
sw t1, 4(t2)

    # TODO 3: Load pair + 4, subtract 45, store to out + 8

la t0, pair
lw t1, 4(t0)
addi t1, t1, -45
la t2, out
sw t1, 8(t2)

    # TODO 4: Reload out into t0, t1, t2

la t3, out
lw t0, 0(t3)
lw t1, 4(t3)
lw t2, 8(t3)

    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall
