org 0x7C00 ; Bios load address, start address out here !
bits 16 ; CPU always start in 16 bits mode.

main:
	hlt ; Halt, stops the CPU execution.

.halt
	jmp .halt ; In case hlt get skipped, infinite loop to avoid CPU from going crazy :D

times 510-($-$$) db 0 ; Write all bytes to 0 until 510 bytes (to ensure the left space is BOOT SIGNATURE)
dw 0AA55h ; Adds the BOOT SIGNATURE
