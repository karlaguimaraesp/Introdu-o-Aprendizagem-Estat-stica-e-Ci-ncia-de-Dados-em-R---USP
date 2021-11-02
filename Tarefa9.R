library(ggplot2)
library(GGally)
library(ggrepel)


#Para este exercício, considere o seguinte conjunto de dados simulados.
set.seed(2)
x <- matrix(rnorm(50 * 2), ncol = 2)
x[1:29, 1] <- x[1:29, 1] + 3
x[1:29, 2] <- x[1:29, 2] - 4


#Utilize o código abaixo para estimar o modelo k-médias para k=2.
set.seed(2)
km2 <- kmeans(x, 2, nstart = 20)

#O código acima atribui cada observação à um único cluster. Quantos elementos foram atribuídos ao cluster com o maior número de observações?29
#Quantos elementos foram atribuídos ao cluster com o menor número de observações?  21
#Qual o valor da soma de quadrados total intra-cluster (dica: veja ?kmeans)?  

?kmeans

wss <- kmeans(x, 2, nstart = 20)$tot.withinss
wss

#Utilize o código abaixo para estimar o modelo k-médias para k=3.

set.seed(5)
km3 <- kmeans(x, 3, nstart = 20)

wsk <- kmeans(x, 3, nstart = 20)$tot.withinss
wsk

#O código acima atribui cada observação à um único cluster. Quantos elementos foram atribuídos ao cluster com o maior número de observações?19
#Quantos elementos foram atribuídos ao cluster com o menor número de observações? 14
#Quantos elementos foram atribuídos ao outro cluster? 17
#Qual o valor da soma de quadrados total intra-cluster?
View(km2)
