## CS 254 Program 8
##
## Determine the maximum value of three two’s complement integers in memory.
##
## Programmer: Jay Patel
## Date: April 6, 2024
##
## Register Use:
## $8   Holds maximum between x and y
## $9   Set to 1 if x < y and 0 if x>=y
## $10  Set to 1 if max of x and y < z and 0 if max of x and y >=z
## $11  Holds value of x
## $12  Holds value of y
## $13  Holds value of z
        .text
        .globl main
main:
        ori     $8,$0,0         # Initialize register 8 with 0
        ori     $9,$0,0         # Initialize register 9 with 0
        ori     $10,$0,0        # Initialize register 10 with 0
        lw      $11,x           # Load x into register 11
        lw      $12,y           # Load y into register 12
        lw      $13,z           # Load z into register 13
        slt     $9,$11,$12      # Set register 9 to 1 if x < y and 0 if x>=y
        bne     $9,$0,ylarger   # Branch to ylarger if register 9 is not equal to 0
        nop                     # Delay slot
        add     $8,$0,$11       # Set register 8 to equal x if x > y
        j       endbranchone    # Jump to endbranchone
        nop                     # Delay slot
ylarger:
        add     $8,$0,$12       # Set register 8 to equal y if y > x
endbranchone:
        slt     $10,$8,$13      # Set register 10 to 1 if max of x and y < z
        bne     $10,$0,zlargest # Branch to z largest if register 10 is not equal to 0
        nop                     # Delay slot
        sw      $8,max          # Store max of x and y into fourth memory location if greater than z
        j       end             # Jump to end
zlargest:
        sw      $13,max         # Store z into fourth memory location if z is maxiumum
end:
data:
x:      .word   5
y:      .word    -4
z:      .word   -1
max:    .word   0