;---------------------------------------------------------
; Transcreva o pseudocódigo a seguir para assembly do Z01.1:
;
; 
;    if ( RAM[1] == 1 && RAM[2] > 2 ):
;        RAM[5] = 1
;    else
;        RAM[6] = -2
;
;---------------------------------------------------------

; if
leaw $R1, %A
subw (%A), $1, %D
leaw $and, %A
je
nop

else:
leaw $2, %A
movw %A, %D
negw %D
leaw $R6, %A
movw %D, (%A)
leaw $end, %A
jmp
nop

and:
leaw $2, %A
movw %A, %D
leaw $R2, %A
subw (%A), %D, %D
leaw $else, %A
jle
nop

leaw $R5, %A
movw $1, (%A)

end: