vocabulario Big data + R


head(trees)#hace que se visualicen las primeras filas u#
#observaciones del conjunto de datos.#

# vemos la información general del dataset
str(trees)


plot(trees$Girth, trees$Volume,col ="red",
ylab = "Variable Volumen", xlab = "Variable Girth",
main = "Plot de relación de Volumen y Girth")


coeficiente de correlación:medida específica que cuantifica la intensidad 
de la relación lineal entre dos variables en un análisis de correlación.

Un valor menor que 0 indica que existe una correlación negativa, es decir, que las dos variables están 
asociadas en sentido inverso. Cuánto más se acerca a -1, mayor es la fuerza de esa relación invertida 
(cuando el valor en una sea muy alto, el valor en la otra será muy bajo). Cuando es exactamente -1, 
eso significa que tienen una correlación negativa perfecta.


Un valor mayor que 0 indica que existe una correlación positiva. En este caso las variables estarían asociadas
en sentido directo. Cuanto más cerca de +1, más alta es su asociación. Un valor exacto de +1 indicaría una relación lineal positiva perfecta.
Finalmente, una correlación de 0, o próxima a 0, indica que no hay relación lineal entre las dos variables.

# Correlación
cor(trees$Girth, trees$Volume)

# Vemos los estadísticos principales
summary(trees) minimos maximos etc

# Diagrama de dispersión y valores de correlación
library(psych)
pairs.panels(trees,gap=0)

#Histograma:gráfico que se utiliza para representar la distribución de 
#frecuencias de algunos puntos de datos de una variable. Los histogramas 
#frecuentemente clasifican los datos en varios
#“contenedores” o “grupos de rango” y cuentan cuántos puntos de datos 
#pertenecen a cada uno de esos contenedores.

#revisión con histogramas de la distribución de los datos
par(mfrow=c(1,3))
hist(trees$Girth, col="green", breaks=15, main = "Histograma variable Girth")
hist(trees$Height, col="#87CEFA", breaks=15, main = "Histograma variable Heigth")
# el color está dato por formato html
hist(trees$Volume, col="#90EE90", breaks=15, main = "Histograma variable Volumen")

#revisión con histogramas de la distribución de los datos BOX PLOT
par(mfrow=c(1,3))
boxplot(trees$Girth, col="green", main = "Circunferencia")
boxplot(trees$Height, col="blue", main = "Altura")
boxplot(trees$Volume, col="orange", main = "Volumen")

#matriz de correlación:herramienta estadística que muestra la intensidad
#y la dirección de la relación entre dos o más variables
#ayuda a entender cómo se relacionan entre sí distintas cosas.

# la función cor permite obtener #los coeficientes de correlación
round(cor(x = trees[c(1,2,3)]),2)   #=archivo/filas/cantidad de digitos#


#TALLER 34 PAGINAS#
#crear vector
Numerico=c(1,2,xxxx)
carateres=c("nombre1","nombre2","xxxx")
#unir vectrores = Data Freme 
df = puede ser cualquier nombre que le demos al dataframe
df = data.frame(Nemerico, caracteres, xxx 	)
#mostrar lo creado
los primeros registros
head(Nombre q dinos al dataframe)
# veamos los últimos registros
tail(df)
# veamos las dimensiones
dim(Nombre q dimos al dataframe)
# Veamos la estructura del dataframe
str(df)
# Vemos el resumen del dataset-estadisticas principales # (media, mediana, quartiles, máximo y mínimo) de las variables continuas.
summary(df)

# mostrar la 	media
mean(nombrededataframe $ nombredelavariable)
# Incluyamos una ETIQUETA   mean(nombredataframe$variable)
Prom_alt <- mean(df$altura)
sprintf("Promedio de la altura: %g", Prom_alt)
## [1] "Promedio de la altura: 163.1"
# mediana median(nombredataframe$varaible)
median(df$altura)
# rango  (nombredataframe $ varaible)
range(df$altura)
# Desviación estándar
desv_st_altura = paste("Desviación estándar de altura es =",round(sd(df$altura)),2)
desv_st_altura
# Histograma de la variable altura (dfnombredataframe$variablealtura)
hist(df$altura, main = "Histograma de la altura")
# Gráfico de densidad de la variable altura
plot(density(df$altura), main = "Gráfico de densidad ", xlab = "Altura")
abline(v=mean(df$altura), col="red", lwd=2) # se incluye la linea con la media o promedio
abline(v=median(df$altura), col ="blue", lwd=2) # se incluye la linea con la mediana
# Veamos un histograma y box plot en paralelo
par(mfrow=c(1,2)) # la función par(mfrow) permite crear varios gráficos en paralelo
boxplot(df$Peso, main = "boxplot", col = "#CCFF99", ylab="Frecuencia", xlab = "Peso")
hist(df$Peso, main = "histograma",col = "#6699FF", ylab="Peso", xlab = "Peso")
# Realicemos un plot de línea y puntos
plot(df$altura, df$Peso, main = "Grafico scatter plot", ylab="Altura", xlab = "Peso",
type = "o", col="red") # el parámetro type indica que queremos trazar la línea)
# Veamos los últimos 5 datos
tail(dataframe)
# veamos el número de filas
nrow(dataframe)
# veamos el número de variables
ncol(dataframe)
# veamos el nombre de las variables
colnames(dataframe)
# Revisar si hay valores nulos
sum(is.na(nombredataframe))
#Tabla de frecuencias absoluctas dataframe $ variable
table(iris$Species)
Cuando se trabaja con tablas los corchetes siempre tienen dos partes separadas por una coma [,]: - la que
la precede se refiere a las filas [1:2,] - la que sigue hace referencia a las columnas [,c(1,2,4)]
# Selecionar las primeras 10 filas iris=dataframe
iris[1:10,]
# Selección de las variables 3 y 4 iris=dataframe
iris[,3:4]
# Selección de un subconjunto iris=dataframe
iris[1:10, 3:4] # primeras 10 filas y las variables 3 y 4
#Histograma personalizado
hist(iris$Sepal.Width, main = "Histograma de la anchura de los sépalos",
xlab = "anchura del sépalo", ylab = "frecuencia",
col = "steelblue")
Gráfico de barras
barplot(table(iris$Species), col= "orange", main=" Gráfico de barras de Iris")
# gráfic boxplot  iris=dataframe sepal.width=variable
boxplot(iris$Sepal.Width ~ iris$Species, col = "darkolivegreen1",
main = "Especies de iris\nsegún la anchura del sépalo") # con \n se separa la línea
#Gráfico circular
pie(table(iris$Species), main="Gráfico circular")


#CORRELACION#library(corrplot)
# Asignamos el dataframe a un objeto
data(iris)
#Selecionamos únicamente las variables numéricas ASIGNAMOS VECTOR A datos
datos <- iris[,c(1,2,3,4)]
head(datos)
#No se muestra la diagonal inferior ya que es lo mismo que la superior
round(cor(x = datos, method = "pearson"),2)
## Sepal.Length Sepal.Width Petal.Length Petal.Width
## Sepal.Length 1.00 -0.12 0.87 0.82
## Sepal.Width -0.12 1.00 -0.43 -0.37
## Petal.Length 0.87 -0.43 1.00 0.96
## Petal.Width 0.82 -0.37 0.96 1.00
#Veamos la distribución de los datos=datos <- iris[,c(1,2,3,4)]
library(psych)
multi.hist(x = datos, dcol = c("blue", "red"), dlty = c("dotted", "solid"),
main = "Distribución de los datos de IRIS")

# Análisis gráfico de la correlación datos=datos <- iris[,c(1,2,3,4)]
#install.packages("corrplot")
library(corrplot)
corrplot(corr = cor(x = datos, method = "pearson"), method = "number")
# Otra opción de ver la correlación y la distribución de los datos = datos <- iris[,c(1,2,3,4)]
library(psych)
pairs.panels(x = datos, ellipses = FALSE, lm = TRUE, method = "pearson")
#Una última opción
#install.packages("GGally")
#install.packages("ggplot2")
library(ggplot2)
ggpairs(iris, lower = list(continuous = "smooth"),
diag = list(continuous = "bar"), axisLabels = "none")













