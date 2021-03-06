/* 
 * Created by: Ryan C.
 * Created April 2022
 * This program loads the value of a variable
 */

.data

.balign 4
myvar1:
    .word 3

.balign 4
myvar2:
    .word 4

.text

.balign 4
.global main
main:
    ldr r1, addr_of_myvar1 @ r1 <- &myvar1
    ldr r1, [r1] @ r1 <- *r1
    ldr r2, addr_of_myvar2 @ r2 <- &myvar2
    ldr r2, [r2] @ r2 <- *r2
    add r0, r1, r2 @ r0 <- r1 + r2
    bx lr

addr_of_myvar1: .word myvar1
addr_of_myvar2: .word myvar2
