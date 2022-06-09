.data
array: .space 5
auxarray: .space 5
msg1: .asciiz "\n Ingrese 5 numeros "
msg2: .asciiz "\n Ingrese un numero: "
.text
.globl main

main:

    li $t0, 0 
    la $t1, array

#imprimir mensaje
    la $a0, msg1
    li $v0, 4
    syscall

while: 

    la $a0, msg2
    li $v0, 4
    syscall

    li $v0, 5
    syscall 
    move $t2, $v0

    sw $t2, 0($t1)

    addi $t1, $t1, 4

    addi $t0, $t0, 1
    blt $t0, 5 , while














