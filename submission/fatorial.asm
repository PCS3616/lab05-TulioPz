@ /0100
N K =1
RES K =1

@ /0000
LD N ; Coleta da memoria 0100
MM /0044 ; Armazena na memoria 0044
SC /0010 ; Chamada da Subrotina
HM /0000 ; Fim do programa

@ /0010
K /0000 ; Inicio da subrotina
MM /0040 ; Armazena o valor na memoria 0040
LD /0040 ; inicio do loop - pega o valor do 0040
SB /0042 ; Subtrai de 1
JZ /0024 ; avalia se chegou ao fim (proximo valor a ser multiplicado seria 0)
MM /0040 ; guarda o proximo valor a multiplicar no 0040
LD /0044 ; pega o valor da multiplicacao anterior
ML /0040 ; faz a multiplicacao atual
MM /0044 ; guarda o valor da multiplicacao
JP /0014 ; jump incondicional para realizar loop
LD /0044 ; Armazena no AC o resultado
MM RES ; guarda o resultado na memoria 102
RS /0010 ; fim da subrotina

@ /0040
K /0000      ; Proximo valor pelo qual sera multiplicado
K /0001      ; valor constante 1
K /000      ; fica armazenado o resultado atual da multiplicacao
