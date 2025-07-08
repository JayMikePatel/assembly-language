## CS 254 Program 6
##
## Compute (17x + 4xy + 11)/8
##
## Programmer: Jay Patel
## Date: March 16, 2024
# 11 x
# 12 y
# 13 accumulator
        .text
        .globl main
main:
        lui     $10,0x1000      # Initialize base register
        lw      $11,0($10)      # Load x
        lw      $12,4($10)      # Load y
        ori     $13,$0,11       # Initialize the accumulator
        
        ori     $14,$0,17       # Evaluate 17
        mult    $11,$14         # 17x
        mflo    $14             # Assume 32 bit result
        addu    $13,$13,$14     # Accumulator = 17x+11
        
        ori     $14,$0,4        # 4
        mult    $11,$14         # 4x
        mult    $12,$14         # 4xy
        mflo    $14             # Assume 32 bit result
        addu    $13,$13,$14     # Accumulator = 17x+4xy+11
        
        ori     $14,$0,8        # 8
        div     $13,$14         # (17x+4xy+11)/8
        mflo    $15             # Quotient in register 9
        sw      $15,8($10)      # Store result
        mfhi    $15             # 
        sw      $15,12($10)     # Remainder

        .data
x:      .word   1
y:      .word   1
answer: .word   0               # Quotient
remain: .word   0               # Remainder