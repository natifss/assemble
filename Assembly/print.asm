.MODEL small ; Define o modelo de memória small
.STACK 64 ; Aloca um espaço de 64 bytes para a pilha

.DATA ; Início da seção de dados
message db 'Soldador', '$' ; Define uma mensagem

.CODE ; Início de seção de código
main proc ; Define o incío do procedimento principal

mov ax, @data ; Carrega o endereço do segmento em AX
mov ds, ax ; Move o valor em AX para o registrador DS

mov ah, 9h ; Preparar o registrador AH para a função 09h do DOS
mov dx, offset message ; Vai fazer o deslocamento da mensagem em DX

int 21h ; Introdução de Interrupção

main endp ; Marca o fim
end main ; Indica o fim