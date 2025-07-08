## CS 254 Program 9
##
## Enter seed and how many random ints are desired.
##
## Programmer: Jay Patel
## Date: April 20, 2024
##
## Register use table:
## 
## $a0 address of string to be printed
## $v0 integer of system call code
## $s0 current random integer
## $s1 how many random integers to be printed
## $s2 a, which equals 21
## $s3 b, which equals 53
## $t0 first part of linear congruence generator equation (randi*a+b)

        .text
        .globl main
        
main:
        li      $v0,4           # code 4 to print string
        la      $a0,seed        # load address of seed string into $a0
        
        syscall                 # system call made to print string
        
        li      $v0,5           # code 5 to read integer initial value input
        syscall                 # system call made to read integer
        move    $s0,$v0         # move input integer to $s0
        
        li      $v0,4           # code 4 to print string
        la      $a0,count       # load address of count string into $a0
        
        syscall                 # system call made to print string
        
        li      $v0,5           # code 5 to read integer how many input
        syscall                 # system call made to read integer
        move    $s1,$v0         # move input integer to $s1
        
        li      $s2,21          # load 21 into $s2
        li      $s3,53          # load 53 into $s3
        
loop:
        sub     $s1,$s1,1       # decrement number of random integers to be printed by 1
        
        mul     $t0,$s0,$s2     # multiply current random integer with 21
        add     $t0,$t0,$s3     # add 53 to randi*a
        rem     $s0,$t0,100     # store (randi*a+b)%100 to s0, the new current random integer
        
        move    $a0,$s0         # move current random integer to $a0
        li      $v0,1           # code 1 to print integer
        syscall                 # system call made to print integer
        
        li      $v0,4           # code 4 to print string
        la      $a0,newline     # load address of newline string to $a0
        
        syscall                 # system call made to print string
        
        bgtz    $s1,loop        # if number of random ints left to be printed is greater than zero, start loop over
        
        li      $v0,4           # code 4 to print string
        la      $a0,done        # load address of done string to $a0
        
        syscall                 # system call made to print string
        
        li      $v0,10          # code 10 to exit program
        syscall                 # control given back to operating system
        
        .data
seed:   .asciiz  "Initial value : "
count:  .asciiz  "Enter how many: "
newline:.asciiz  "\n"
done:   .asciiz  "Done\n"