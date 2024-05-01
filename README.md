## Repositório utilizado para relatar os projetos realizados em sala de aula, para a disciplina de Sistemas Embarcados

### 1ª atividade:
#### Marie.JS

![Captura de tela 2024-04-30 194517](https://github.com/natifss/assemble/assets/119085630/78218467-8d8f-4614-9c12-e7affadbdedf)

![Captura de tela 2024-04-30 194522](https://github.com/natifss/assemble/assets/119085630/a45bd7ef-4718-45d9-981b-08f858714020)

> Neste código Assembly, a alocação de memória dinâmica para armazenar o nome "Natali" é realizada da seguinte maneira:

>Definição dos Valores dos Caracteres do Nome:
>Os valores hexadecimais correspondentes aos caracteres do nome "Natali" são definidos:
>'n' = 6e (corresponde ao caractere 'n' em hexadecimal)
>'a' = 61 (corresponde ao caractere 'a' em hexadecimal)
>'t' = 74 (corresponde ao caractere 't' em hexadecimal)
>'a' = 61 (corresponde ao caractere 'a' em hexadecimal)
>'l' = 6c (corresponde ao caractere 'l' em hexadecimal)
>'i' = 69 (corresponde ao caractere 'i' em hexadecimal)

>Reserva de Espaço para o Nome:
>São definidas quatro variáveis para armazenar os caracteres do nome "Natali", cada uma inicializada com o valor hexadecimal 0:
>NAME_N: Armazenará o caractere 'n'
>NAME_A: Armazenará o caractere 'a'
>NAME_T: Armazenará o caractere 't'
>NAME_I: Armazenará o caractere 'i'

>Armazenamento dos Caracteres nos Espaços Reservados:
>Os valores hexadecimais correspondentes aos caracteres do nome são carregados em registradores e, em seguida, armazenados nas variáveis reservadas para o nome:
>'n' (6e) é armazenado em NAME_N
>'a' (61) é armazenado em NAME_A
>'t' (74) é armazenado em NAME_T
>'i' (69) é armazenado em NAME_I

>Com isso, a alocação de memória dinâmica para armazenar o nome "Natali" é concluída, e cada caractere do nome é armazenado em uma variável específica, permitindo o acesso individual a cada caractere do nome quando necessário durante a execução do programa.


### 2ª atividade:

> O DOS (Disk Operating System) em Assembly é a programação de sistemas operacionais baseados em DOS usando a linguagem Assembly. É frequentemente usada para escrever programas de baixo nível que interagem diretamente com o sistema operacional e o hardware subjacente 

>Ele realiza interrupções do DOS, Registro de Memória, Instruções de Controle de Fluxo e Manipulação de Interrupções

#### Código Comentado:
```sh
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

```
#### Registradores:

> Registradores são componentes fundamentais dentro de uma CPU. São utilizados para armazenar, manipular e transferir dados temporariamente durante a execução de um programa. Cada CPU tem um conjunto específico de registradores, embora muitos princípios básicos sejam comuns entre elas.

> No código apresentado anteriormente, foram utilizados os seguintes registradores:
>- AX(Acumulador);
>- DS(Data Segment);
>- AH(High Byte do Acumulador);
>- DX(Registrador de Dados).

>Eles são essenciais para o funcionamento correto do programa, manipulando endereços de memória, preparando argumentos para funções de interrupção e armazenando dados temporários durante a execução do programa

