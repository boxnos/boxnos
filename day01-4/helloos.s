.byte 0xeb, 0x4e, 0x90
.ascii "HELLOIPL"
.word 512
.byte 1
.word 1
.byte 2
.word 224
.word 2880
.byte 0xf0
.word 9
.word 18
.word 2

.long 0
.long 2880
.byte 0x00, 0x00, 0x29
.long 0xffffffff
.ascii "BOXNOS     "
.ascii "FAT12   "
#.skip 18
. = . + 18

.byte 0xb8, 0x00, 0x00, 0x8e, 0xd0, 0xbc, 0x00, 0x7c
.byte 0x8e, 0xd8, 0x8e, 0xc0, 0xbe, 0x74, 0x7c, 0x8a
.byte 0x04, 0x83, 0xc6, 0x01, 0x3c, 0x00, 0x74, 0x09
.byte 0xb4, 0x0e, 0xbb, 0x0f, 0x00, 0xcd, 0x10, 0xeb
.byte 0xee, 0xf4, 0xeb, 0xfd

.asciz "\n\nhello, world\n"

.org 0x1fe
.byte 0x55, 0xaa

.byte 0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
//.org . + 4600
.skip 4600
.byte 0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00
.org 0x200 * 2880
