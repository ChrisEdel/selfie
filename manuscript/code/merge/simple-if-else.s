0x0: lui $t0,0x10
0x4: addi $t0,$t0,584
0x8: addi $gp,$t0,0
0xC: addi $a0,$zero,0
0x10: addi $a7,$zero,214
0x14: ecall
0x18: addi $a0,$a0,7
0x1C: addi $t0,$zero,8
0x20: remu $t0,$a0,$t0
0x24: sub $a0,$a0,$t0
0x28: addi $a7,$zero,214
0x2C: ecall
0x30: sd $a0,-8($gp)
0x34: addi $a0,$zero,0
0x38: addi $t0,$sp,8
0x3C: addi $sp,$sp,-8
0x40: sd $t0,0($sp)
0x44: jal $ra,61[0x138]
0x48: addi $sp,$sp,-8
0x4C: sd $a0,0($sp)
0x50: ld $a0,0($sp)
0x54: addi $sp,$sp,8
0x58: addi $a7,$zero,93
0x5C: ecall
0x60: ld $a2,0($sp)
0x64: addi $sp,$sp,8
0x68: ld $a1,0($sp)
0x6C: addi $sp,$sp,8
0x70: ld $a0,0($sp)
0x74: addi $sp,$sp,8
0x78: addi $a7,$zero,63
0x7C: ecall
0x80: jalr $zero,0($ra)
0x84: ld $a2,0($sp)
0x88: addi $sp,$sp,8
0x8C: ld $a1,0($sp)
0x90: addi $sp,$sp,8
0x94: ld $a0,0($sp)
0x98: addi $sp,$sp,8
0x9C: addi $a7,$zero,64
0xA0: ecall
0xA4: jalr $zero,0($ra)
0xA8: ld $a3,0($sp)
0xAC: addi $sp,$sp,8
0xB0: ld $a2,0($sp)
0xB4: addi $sp,$sp,8
0xB8: ld $a1,0($sp)
0xBC: addi $sp,$sp,8
0xC0: addi $a0,$zero,-100
0xC4: addi $a7,$zero,56
0xC8: ecall
0xCC: jalr $zero,0($ra)
0xD0: ld $t0,0($sp)
0xD4: addi $sp,$sp,8
0xD8: addi $t0,$t0,7
0xDC: addi $t1,$zero,8
0xE0: remu $t1,$t0,$t1
0xE4: sub $t0,$t0,$t1
0xE8: ld $t1,-8($gp)
0xEC: add $a0,$t1,$t0
0xF0: addi $a7,$zero,214
0xF4: ecall
0xF8: beq $a0,$t1,2[0x100]
0xFC: beq $zero,$zero,4[0x10C]
0x100: beq $zero,$t0,3[0x10C]
0x104: addi $a0,$zero,0
0x108: beq $zero,$zero,3[0x114]
0x10C: sd $a0,-8($gp)
0x110: addi $a0,$t1,0
0x114: jalr $zero,0($ra)
0x118: ld $a1,0($sp)
0x11C: addi $sp,$sp,8
0x120: ld $a0,0($sp)
0x124: addi $sp,$sp,8
0x128: addi $a7,$zero,401
0x12C: ecall
0x130: addi $a0,$a6,0
0x134: jalr $zero,0($ra)
0x138: addi $sp,$sp,-8
0x13C: sd $ra,0($sp)
0x140: addi $sp,$sp,-8
0x144: sd $fp,0($sp)
0x148: addi $fp,$sp,0
0x14C: addi $sp,$sp,-16
0x150: addi $t0,$zero,8
0x154: addi $sp,$sp,-8
0x158: sd $t0,0($sp)
0x15C: jal $ra,-35[0xD0]
0x160: addi $t0,$a0,0
0x164: addi $a0,$zero,0
0x168: sd $t0,-8($fp)
0x16C: addi $t0,$zero,40
0x170: sd $t0,-16($fp)
0x174: addi $t0,$zero,1
0x178: addi $sp,$sp,-8
0x17C: sd $t0,0($sp)
0x180: ld $t0,-8($fp)
0x184: addi $sp,$sp,-8
0x188: sd $t0,0($sp)
0x18C: addi $t0,$zero,1
0x190: addi $sp,$sp,-8
0x194: sd $t0,0($sp)
0x198: jal $ra,-78[0x60]
0x19C: addi $a0,$zero,0
0x1A0: ld $t0,-8($fp)
0x1A4: ld $t0,0($t0)
0x1A8: addi $t1,$zero,2
0x1AC: sub $t0,$t1,$t0
0x1B0: addi $t1,$zero,1
0x1B4: sltu $t0,$t0,$t1
0x1B8: beq $t0,$zero,7[0x1D4]
0x1BC: ld $t0,-16($fp)
0x1C0: ld $t1,-8($fp)
0x1C4: ld $t1,0($t1)
0x1C8: add $t0,$t0,$t1
0x1CC: sd $t0,-16($fp)
0x1D0: jal $zero,8[0x1F0]
0x1D4: ld $t0,-16($fp)
0x1D8: ld $t1,-8($fp)
0x1DC: ld $t1,0($t1)
0x1E0: addi $t2,$zero,10
0x1E4: sub $t1,$t1,$t2
0x1E8: add $t0,$t0,$t1
0x1EC: sd $t0,-16($fp)
0x1F0: ld $t0,-16($fp)
0x1F4: addi $t1,$zero,42
0x1F8: sub $t0,$t1,$t0
0x1FC: addi $t1,$zero,1
0x200: sltu $t0,$t0,$t1
0x204: beq $t0,$zero,5[0x218]
0x208: addi $t0,$zero,1
0x20C: addi $a0,$t0,0
0x210: jal $zero,5[0x224]
0x214: jal $zero,4[0x224]
0x218: addi $t0,$zero,0
0x21C: addi $a0,$t0,0
0x220: jal $zero,1[0x224]
0x224: addi $sp,$fp,0
0x228: ld $fp,0($sp)
0x22C: addi $sp,$sp,8
0x230: ld $ra,0($sp)
0x234: addi $sp,$sp,8
0x238: jalr $zero,0($ra)
0x23C: nop
0x240: .quad 0x0
