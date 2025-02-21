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
MM /140
ML SHIFT ; fica na forma 0X 00, sendo x o algarismo menos significativo
MM /142 ; depuracacao
SB VERIFICADOR ; verifica se a soma dos menos significativos eh >= A
MM /144 ; depuracao
JN /040 ; caso negativo
JP /050 ; caso positivo

@ /0050
LD /200
MM /150
SB SUBTRAICORRETOR
MM /152
AD SOMACORRETOR
MM /154
JP /042

@ /0040
LD /200   ; carrega soma
AD TEMP   ; soma 3030
MM /156
PD /0001  ; tentativa de imprimir no terminal  
MM /0060 
HM /0000

@ /0400
TEMP K /3030
VERIFICADOR K /0A00
SUBTRAICORRETOR K /000A
SOMACORRETOR K /0100
SHIFT K /0100
