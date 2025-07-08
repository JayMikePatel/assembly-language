## CS 254 Program 3 Spring 2024
##
## Compute the sum of four integers
##
## Programmer: Jay Patel
## Date: February 14, 2024
        .text
main:
        ori     $8,$0,74        # Load 74 into register 8
        ori     $9,$0,23        # Load 23 into register 9
        ori     $11,$0,57       # Load 57 into register 11
        ori     $12,$0,85       # Load 85 into register 12
        addu    $13,$8,$9       # Add data in register 8 and register 9 and store in register 13
        addu    $14,$11,$13     # Add data in register 11 and register 13 and store in register 14
        addu    $15,$12,$14     # Add data in register 12 and register 14 and store in register 15
        addu    $10,$15,0       # Add data in register 15 and 0 and store in register 10