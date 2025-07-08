## CS 254 Program 7
##
## XOR between five bytes in memory and five one-byte bit patterns 
##
## Programmer: Jay Patel
## Date: March 24, 2024
##
## Register Use:
## $10  base register
## $9   holds encrypted byte
## $8   holds result of stored byte XOR mask byte
## $0   delay slot
        .text
        .globl main
main:
        lui     $10,0x1000      # Initialize base register
        
        lbu     $9,0($10)       # Load first byte data from memory into register 9
        ori     $0,$0,0         # Load delay slot instruction
        xori    $8,$9,0x5F      # Result of memory byte data and mask byte into register 8
        sb      $8,0($10)       # Store deciphered byte into memory
        
        lbu     $9,1($10)       # Load second byte data from memory into register 9
        ori     $0,$0,0         # Load delay slot instruction
        xori    $8,$9,0xFC      # Result of memory byte data and mask byte into register 8
        sb      $8,1($10)       # Store deciphered byte into memory
        
        lbu     $9,2($10)       # Load third byte data from memory into register 9
        ori     $0,$0,0         # Load delay slot instruction
        xori    $8,$9,0xCC      # Result of memory byte data and mask byte into register 8
        sb      $8,2($10)       # Store deciphered byte into memory
        
        lbu     $9,3($10)       # Load fourth byte data from memory into register 9
        ori     $0,$0,0         # Load delay slot instruction
        xori    $8,$9,0x53      # Result of memory byte data and mask byte into register 8
        sb      $8,3($10)       # Store deciphered byte into memory
        
        lbu     $9,4($10)       # Load fifth byte data from memory into register 9
        ori     $0,$0,0         # Load delay slot instruction
        xori    $8,$9,0x9D      # Result of memory byte data and mask byte into register 8
        sb      $8,4($10)       # Store deciphered byte into memory
        
        .data                   # enciphered bytes
        .byte   0x17            # first encrypted byte
        .byte   0x99            # second encrypted byte
        .byte   0xA0            # third encrypted byte
        .byte   0x3F            # fourth encrypted byte
        .byte   0xF2            # fifth encrypted byte