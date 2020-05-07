; Preenche a memória RAM
; com um contador progresssivo. O valor
; da RAM[2] tem o tamanho total do vetor.
; O vetor deve começar em RAM[3]
;
; RAM[0] e RAM[1] podem ser usados livremente
;
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  
; RAM[1]:     | RAM[1]:  
; RAM[2]:  4  | RAM[2]:  4
; RAM[3]:  0  | RAM[3]:  0 -
; RAM[4]:  0  | RAM[4]:  1 | vetor
; RAM[5]:  0  | RAM[5]:  2 | 
; RAM[6]:  0  | RAM[6]:  3 -
; RAM[7]:  0  | RAM[7]:  0


; condição para verificar se RAM[2] é igual a zero, se for pula para o final e o programa acaba
leaw $R2, %A
movw (%A), %D 
leaw $end, %A
je
nop

; primeira iteração guarda o endereço de RAM[3] em RAM[0]
leaw $R3, %A
movw %A, %D
leaw $R0, %A
movw %D, (%A)

; RAM[0] = endereço
; RAM[1] = valor
loop:
leaw $R0, %A
movw (%A), %D ; <--- copia endereço da última RAM[X] em %D
incw %D ; <--- adiciona 1 ao endereço anterior para definir novo endereço RAM[X+1]
movw %D, (%A) ; <--- copia para RAM[0] o novo endereço
leaw $R1, %A 
addw $1, (%A), %D ; <--- adiciona 1 à RAM[1] e guarda o novo valor em %D
movw %D, (%A)
leaw $R0, %A
movw (%A), %A ; <--- copiando o endereço de RAM[X+1] para %A
movw %D, (%A) ; <--- copia-se o valor progressivo da ultima memória
leaw $R2, %A
subw (%A), %D, %D ; <--- até que o valor seja
leaw $loop, %A
jne
nop

; zera o valor em R[X+1] pois ultrapassa o tamanho do vetor a iteração
leaw $R0, %A
movw (%A), %A
movw $0, (%A)

end: