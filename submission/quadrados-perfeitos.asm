@ /0000
SC /010
HM /000

@ /0010
K /0000 
LD /086 ; Chama I 
ML /082 ; multiplica por 2
AD /080 ; soma com 1
AD /088 ; atualiza a soma
MM /088 ; guarda a soma
LD /086 ; carrega I
AD /080 ; acresce I de 1
MM /086 ; guarda I 
SB /084 ; Subtrai de 64
JZ /0030 ; vai para o fim da subrotina
JP /0050 ; vai para o processo de armazenamento


@ /0030
RS /0010

@ /0050
LD /088             ; carrega o valor da soma
MEMORIA MM /102     ; coloca na memoria 
LD MEMORIA          ; carrega o valor numerico de MEMORIA
AD /082             ; soma 2 
MM MEMORIA          ; atualiza o valor de MEMORIA
JP /012             ; jump pro inicio do loop

@ /080
K =1 ; Constante = 1 0080
K =2 ; Constante = 2 0082
K =64 ; Constante = 64 0084
K /0000 ; i  0086
K /0000 ; soma 0088
