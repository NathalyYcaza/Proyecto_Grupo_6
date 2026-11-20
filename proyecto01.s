.data
inventario:   .word 12
              .space 12
registro:     .word 25
              .space 12
estado:       .word 0

.text
.globl main

main:
    la   $s0, inventario
    la   $s1, registro
    la   $s2, estado

    lw   $t0, 0($s0)
    add  $t1, $t0, $t0
    sub  $t2, $t1, $t0

    add  $t3, $t0, $t1
    addi $t0, $zero, 6

    add  $t4, $t1, $t2
    sub  $t4, $t1, $t0

    add  $t5, $t1, $t2
    sub  $t6, $t1, $t2

    lw   $t7, 0($s1)
    add  $t8, $t5, $t6

    beq  $t8, $zero, CERO
    addi $t9, $zero, 101

    sw   $t9, 0($s2)
    j    FIN

CERO:
    addi $t9, $zero, 0
    sw   $t9, 0($s2)

FIN:
    li   $v0, 10
    syscall