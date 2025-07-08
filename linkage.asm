## CS 254 Program 11
##
## Links to a subroutine to compute x**n from user input.
##
## Programmer: Jay Patel
## Date: May 1, 2024
##
## Register use table:
##
## $a0 address of data to be printed and integer x
## $v0 integer of system call code, user input, and result
## $s0 saves input integer x
## $s1 saves input integer n
## $a1 integer n

        .text
        .globl main
main:
        li      $v0,4           # code 4 to print string
        la      $a0,x           # load address of x string into $a0
        syscall                 # system call made to print string
        
        li      $v0,5           # code 5 to read integer initial value input
        syscall                 # system call made to read integer
        move    $s0,$v0         # move input x integer to $s0
        
        li      $v0,4           # code 4 to print string
        la      $a0,n           # load address of n string into $a0
        syscall                 # system call made to print string
        
        li      $v0,5           # code 5 to read integer initial value input
        syscall                 # system call made to read integer
        move    $s1,$v0         # move input n integer to $s1
        
        li      $v0,4           # code 4 to print string
        la      $a0,newln       # load address of newln string into $a0
        syscall                 # system call made to print string
        
        li      $v0,4           # code 4 to print string
        la      $a0,result      # load address of result string into $a0
        syscall                 # system call made to print string
        
        move    $a0,$s0         # move input x into $a0
        move    $a1,$s1         # move input n into $a1
        
        jal     pow             # call subroutine to compute x**n
        nop                     # branch delay slot
        
        move    $a0,$v0         # move result into $a0
        
        li      $v0,1           # code 1 to print result from $a0
        syscall                 # system call made to print integer
        
        li      $v0,4           # code 4 to print string
        la      $a0,newln       # load address of newln string into $a0
        syscall                 # system call made to print string
        
        li      $v0,10          # code 10 to exit program
        syscall                 # control given back to operating system

        .data
x:      .asciiz "Enter X: "
n:      .asciiz "Enter N: "
result: .asciiz "Result: "
newln:  .asciiz "\n"