lw x10, v1
lw x11, v2

addi x18, x10, 0

srli x18, x18, 8
andi x18, x18, 0xff
slli x18, x18, 24

slli x11, x11, 8
srli x11, x11, 8

or x11, x11, x18

v1: .word 0x12345678
v2: .word 0xfffffff

