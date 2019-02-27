.set CYLS,  0x0ff0
.set LEDS,  0x0ff1
.set VMODE, 0x0ff2
.set SCRNX, 0x0ff4
.set SCRNY, 0x0ff6
.set VRAM,  0x0ff8

# black out
    mov $13, %al
    mov $0x00, %ah
    int $0x10

    movb $0, (VMODE)
    movw $320, (SCRNX)
    movw $200, (SCRNY)
    movl $0x000a0000, (VRAM)

    mov $02, %ah
    int $0x16
    mov %al, (LEDS)

fin:
    hlt
    jmp fin
