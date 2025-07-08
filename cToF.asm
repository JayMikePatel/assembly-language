## CS 254 Program 1
##
## Convert input in celsius to farenheit and print.
##
## Programmer: Jay Patel
## Date: April 27, 2024
##
## Register use table:
## 
## $a0 address of string to be printed
## $v0 integer of system call code
## $f0 celsius input
## $s1 how many random integers to be printed
## $s2 a, which equals 21
## $s3 b, which equals 53
## $t0 first part of linear congruence generator equation (randi*a+b)

        .text
        .globl main
        
main:
        li      $v0,4           # code 4 to print string
        la      $a0,prompt      # load address of seed string into $a0
        syscall                 # system call made to print string
        
        li      $v0,6           # code 6 to read float input
        syscall                 # system call made to read float
        
        l.s     $f2,nine        # load float 9.0 into register $f2
        mul.s   $f4,$f0,$f2     # multiply float input with 9.0 and store in result $f4
        
        l.s     $f6,five        # load float 5.0 into register $f6
        div.s   $f8,$f4,$f6     # divide result $f4 by 5.0 and store in result $f8
        
        l.s     $f10,thrtwo     # load float 32.0 into register $f10
        add.s   $f12,$f8,$f10   # add result $f8 and 32.0 and store in result $f12 
        
        li      $v0,4           # code 4 to print string
        la      $a0,faren       # load address of faren string to $a0
        
        syscall                 # system call made to print string
        
        li      $v0,2           # code 2 to print float from $f12
        syscall                 # system call made to print float
        
        li      $v0,4           # code 4 to print string
        la      $a0,newln       # newln loaded into $a0
        syscall                 # syscall made to print string
        
        li      $v0,10          # code 10 to exit program
        syscall                 # control given back to operating system
        
        .data
prompt: .asciiz "Enter Celsius: "
faren:  .asciiz "Farenheit: "
nine:   .float  9.0
five:   .float  5.0
thrtwo: .float  32.0
newln:  .asciiz "\n"