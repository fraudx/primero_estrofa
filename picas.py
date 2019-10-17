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


#recorrer listas

fijas = 0
picas = 0
for i in range(len(numero)):
    if numero[i]== usuario[i]:
        fijas += 1

for i in range(len(numero)):
    if j in range(len(usuario)):
        if numero[i] == usuario[j] and i != j:
                  picas += 1

                
print("fijas = " + str(fijas))
print("picas = " + str(picas))
if fijas == cantidad:
    Break
                  
