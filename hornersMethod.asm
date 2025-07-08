## CS 254 Program 5
##
## Compute 3x^4 - 2x^3 + 10x^2 - 13x + 14 using Horner's Method
##
## Programmer: Jay Patel
## Date: March 1, 2024
        .text
main:
        addiu   $9,$0,2         # Add x into register 9
        addiu   $10,$0,3        # Add 3 into register 10, 3
        mult    $10,$9          # Multiply register 9 and register 10 into lo
        mflo    $10             # Load lo into register 10, 3x
        addiu   $10,$10,-2      # Add -2 to register 10, 3x-2
        mult    $10,$9          # Multiply register 9 and register 10 into lo
        mflo    $10             # Load lo into register 10, 3x^2-2x
        addiu   $10,$10,10      # Add 10 to register 10, 3x^2-2x+10
        mult    $10,$9          # Multiply register 9 and 10 into lo
        mflo    $10             # Load lo into register 10, 3x^3-2x^2+10x
        addiu   $10,$10,-13     # Add -13 to register 10, 3x^3-2x^2+10x-13
        mult    $10,$9          # Multiply register 9 and 10 into lo
        mflo    $10             # Load lo into register 10, 3x^4-2x^3+10x^2-13x
        addiu   $10,$10,14      # Add 14 to register 10, 3x^4-2x^3+10x^2-13x+14