@ /0000
GD /0000
SB TEMP
MM /102 ;  valor de x
GD /0000
GD /0000 
SB TEMP
MM /104 ; valor de y

AD /102 ; soma x e y
MM /200
ML SHIFT ; fica na forma 0X 00, sendo x o algarismo menos significativo
MM /10A ; depuracacao
SB VERIFICADOR ; verifica se a soma dos menos significativos eh >= A
MM /10C ; depuracao
JN /050 ; caso negativo
JP /040 ; caso positivo

@ /0040
LD /200
SB SUBTRAICORRETOR
AD SOMACORRETOR
JP /050

@ /0050
LD /200   ; carrega soma
AD TEMP   ; soma 3030
PD /0001  ; tentativa de imprimir no terminal
MM /060   
HM /0000

@ /0100
TEMP K /3030
VERIFICADOR K /0A00
SUBTRAICORRETOR K /000A
SOMACORRETOR K /0100
SHIFT K /0100