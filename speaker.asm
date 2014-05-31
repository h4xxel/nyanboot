
speaker_freq:
	

speaker_start:
	pusha
	in		al, 0x61
	or		al, 0x03
	out		0x61, al
	popa
	ret

speaker_stop:
	pusha
	mov		al, 0x61
	and		al, 0xFC
	out		0x61, al
	popa

speaker_set:
	pusha
	mov		bx, ax
	mov		al, 0xB6
	out		0x43, al
	mov		ax, bx
	out		0x42, al
	mov		ah, al
	out		0x42, al

	popa
