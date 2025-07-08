## CS 254 Program 4 Spring 2024
##
## Compute 13*x
##
## Programmer: Jay Patel
## Date: February 20, 2024
        .text
main:
        ori     $7,$0,5         # Load variable x into register 7 in this case integer 5
        sll     $8,$7,2         # Load 4x into register 8 by logical shifting bits of register 7 left by two
        sll     $9,$7,3         # Load 8x into register 9 by logical shifting bits of register 7 left by three
        addu    $11,$7,$8       # Load 5x into register 11 by loading result of adding x from register 7 to 4x from register 8
        addu    $10,$9,$11      # Load 13x into register 10 by loading result of adding 5x from register 11 to 8x from register 9