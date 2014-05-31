[bits 16]
[org 0x7C00]


jmp $

times 510 - ($ - $$) db 0x0
signature db 0x55, 0xAA