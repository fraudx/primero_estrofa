#generacion de numero aleatorio
import random
numero = []

while len(numero)<3:
    digito=random.randint (0,9)
    if digito not in numero:
        numero.append(digito)
        
print (numero)
# pone los numero en una cadena
while True:
    intento = input("ingrese numero")

    usuario = []
    for i in intento:
        if int (i) not in usuario:
            usuario.append(int(i))

    if len(usuario) != len(numero):
        print("intento invalido")
    else:
        break

print(usuario, numero)

if (usuario) == (numero):
     print ("el numero es igual")


            
        



