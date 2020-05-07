; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = SW9 OFF ON ON ON OFF !SW3 !SW2 ON OFF

; adicionando valores de !sw3,!sw2 aos leds
leaw $12 %A
movw %A, %D
leaw $21185, %A
andw (%A), %D, %D
notw %D
leaw $12 %A
andw %A, %D, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)

; adicionando o valor de sw9
leaw %512, %A
movw %A, %D
leaw $21185, %A
andw (%A), %D, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)

; por fim, adicionando os valores de leds on/off (1/0)
leaw %226, %A
movw %A, %D
leaw $21184, %A
addw %D, (%A), %D
movw %D, (%A)




