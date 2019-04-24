[org 0x7c00]

    mov ah, 0x01 ; ah <- int 0x13 function. 0x01 = 'disk status'
    int 0x13

    movzx dx, al
    call print_hex

    call print_nl

    jmp $

%include "../05-bootsector-functions-strings/boot_sect_print.asm"
%include "../05-bootsector-functions-strings/boot_sect_print_hex.asm"

; Magic number
times 510 - ($-$$) db 0
dw 0xaa55