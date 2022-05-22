#Exemplo 2.4

x <- c(48, 49, 51, 50, 49) # entrada do dados
x                          # apresentação dos dados ( 48 49 51 50 49)
x=edit(x)                  # comando de edição dos dados
x                          # reapresentação dos dados

#Exemplo 2.6.1
help(sqrt)                       #ajuda sobre a função sqrt

help.search("negative binomial") #ajuda sobre a expressão "negative binomial"
??weibull                        #ajuda sobre a expressão "weibull"
 
#Exemplo 2.6.2

x = 5
x
.Last.value                     # .Last.value = último valor inserido. Exibição de x=5.
y = 10
89
.Last.value                     #Exibição de 89

#Exemplo 2.6.4

x=3; y=5; z=10                   # atribuição de dados
h = 4*sqrt(3*x) + 15/(y-z) - x^2 
h                                # exibição de h=0

x = 3
2*(1>(3&(4<=x)*!0))     # Quando uma expressão é falsa ela recebe 0. Quando é verdadeira recebe 1
                        #(4<=x)=0. 3&0=0. (0*!0)=0. (1>0)=1. (2*1)=2. O valor 2 é exibido
x = 5            
2*(1>(3&(4<=x)*!0))     #(4<=x)=1. 3&0=1. (0*!0)=1. (1>0)=0. (2*1)=0. O valor 0 é exibido

#Exemplo 2.6.5

x = 30; y = 60
(sin(x))^2 + (cos(x))^2  # exibição de 1
round(tan(2*y),digits =3)# round=arredondamento. digits=3 casas decimais. exibição de 0.713
floor(tan(2*y))          # floor=arredonamento para baixo. exibição de 0. 
ceiling(tan(2*y))        # ceiling=arredondamento para cima. exibição de 1.

#Exemplo 2.6.6

sqrt(-17)       #Mensagem de erro porque raiz de -17 nao existe nos reais.          
sqrt(-17+0i)    #Raiz de -17 é exibida como um número complexo

#Exemplo 2.7.2

vec <- c(1, 4, 10.5, 54.48, 9, 10)
vec
vec2 <- (1:10)  #Declarando 10 números inteiros a um vetor ao mesmo tempo. 
vec2
vec3 <- c((1:3),(3:1))  #Declarando números inteiros de 1 a 3 e de 3 a 1 a um vetor
vec3
vec4 <- c(0, vec3, 0)
vec4

seq(from=1, to=5)      
seq(from=1, to=5, by=0.5)          #Declarando números de 1 a 5 de 0.5 em 0.5
seq(from=0, to=10, length.out= 4)  #Declarando números 4 números de 0 a 10 igualmente espaçados

#Exemplo 2.7.3

x <- array(c(1:10), dim = c(2,5))  #Declarando uma matriz de duas colunas e cinco linhas
x                                  #Exibindo x.
 
A <- matrix(c(1:10),2,5,1)         #Outra forma de declarar uma matriz de 2 linhas, 5 colunas 
                                   #com os dados dispostos por linhas.

A[2,4]            #Elemento da linha 2 e coluna 4 da matriz A é exibido
A[2,4] - x[1,5]   #Elemento da linha 1 e coluna 5 da matrix x é subtraido de A[2,4].
A[2,]             #Todos as entradas da linha 2 são exibidoas.
A[,2:4]           #Todas as entradas das colunas 2 a 4 são exibidas.
A[,]              #Todas as entradas da matriz são exibidas.

B = t(A)          #Atribui a B a matriz transposta de A.
B                 #Exibindo B.

b= array(c(0,1,5),dim=c(3,1))
C= matrix(c(c(1,1,0),c(0,1,4),c(0:2)),3,3,1);
y = solve(C,b)                     #Resolução do sistema Cx=b
y                                  #Exibição da solução
Cinv = solve(C)                    #Outra forma de resolver o sistema proveniente da matriz C.
Cinv%*%b

#Exemplo 2.8
getwd()      #Checando o diretório
carregar <- read.table("arquivo.csv",header=T,sep=",",dec=".") #Esse comando lê um arquivo .csv que tenha uma tabela com título e colunas separadas por vírgula. 
names() #Comando para verificar o título da tabela no arquivo
dim()   #Confere a dimensão da tabela, que é considerada como uma matriz.
carregar[1,1]           #localiza o elemento a(1,1) da matriz
carregar[1:5,]          #Localiza as cinco primeiras linhas do arquivo
dir()
#Exemplo 2.9

read.table("endereço") #Lê arquivo na internet
download.file(’endereço’,’ficheiro de destino’) #Baixa arquivo da internet.

#Exemplo 3.1.1

a <- 1:20
b <- a^2     #A função “plot(dados)” gera um gráfico simples, atribuindo pontos em coordenadas cartesianas.
plot(a,b)    #Plota a sequência b=a^2 com 1<=a<=20

plot(a,b, type="l") #type="1" transforma a sequência em uma função contínua.

a <- 1:20
b <- a^2
plot(a,b)        #Plota o grafico de a e b
lines(rev(a),b)  #Adição de uma linha ao gráfico anterior.(revertendo a ordem dos pontos a)
points(a, 400-b) #Adição de pontos ao gráfico(Exibindo a sequência (400 - a^2) com 1<=a<=20)

a <- 1:20; b <- a^2
plot(a,b,pch=2)           #O comando "pch=" muda a aparência dos pontos do gráfico
points(a,400-b, pch=5)    #Desenha uma sequencia de pontos nas coordenadas especificadas
points(a,200-b, pch=10)
windows()
plot(0:20,0:20,pch=0:20)  #Gerando uma linha reta com cada ponto em um dos 20 estilos.

a <- 1:20; b <- a^2       #lwd muda a espessura do gráfico de linha.
plot(a,b,type="l")        #lty muda o estilo do gráfico de linha.
lines(a,2*b,lwd=4)
lines(a,0.5*b,lty=2)      #Desenha uma linha que conecta os pontos especificados
lines(a,3*b,lty=3)
lines(a,4*b,lty=2,lwd=4)

plot(c(-pi,pi),c(-1,1), type="n") #gerando um gráfico em branco
x<-seq(-pi,pi,0.1)
a <- sin(x)                       #Calcula o valor do seno de x
b <- sin(x-2/3*pi) 
c <- sin(x+2/3*pi)
lines(x,a,col=2,lwd=1)
lines(x,b,col=3,lwd=2)
lines(x,c,col=4,lwd=3)

plot(c(-pi,pi),c(-1,3),xlab="Período", ylab="Fases", type="n") #Plota o gráfico dos valores com as condições especificadas
title("Representação das tensões trifásicas","Fases ABC") #Define o titulo do grafico plotado
lines(x,a,col=2,lwd=1)
lines(x,b,col=3,lwd=2)
lines(x,c,col=4,lwd=3)
text(0,2,"Observe a defasagem de 120◦ entre as fases")    #Define um texto descritivo nas coordendas indicadas

a <- seq(from=0, to=20, by=2); b <- a^2
plot(a,b,type="n") #plota um gráfico vazio
text(a,b,"R") #aplica a etiqueta no sítio dos pontos

#Exemplo 3.1.2

jpeg(file=’figure.jpeg’) #figure é o nome do arquivo imagem
plot(rnorm(10)) #gráfico que estou salvando
dev.off() #fecha a janela gráfica automaticamente

plot(rnorm(10)) #plotando o primeiro gráfico
windows() #criação de uma nova janela gráfica
plot(rnorm(20)) #plotando o segundo gráfico

#Exemplo 3.1.3

x=1:20
y=sqrt(x)   #Calcula a raiz quadrade de x e atribui a y
plot(x,y)   #plot ao grafico de x e y
text(locator(1),"mas ba tchê")
#onde for dado o clique será escrita a mensagem

#ou de outra forma:
plot(x,y)
locator(2)
#localiza dois pontos e dá suas coordenadas na console
x
y

x <- c(2,3,4,5,6,7,8,9) #Representação das coordenadas"x" das cidades
y <- c(15,26,45,8,74,11,61,32) #Coordenadas y das cidades
#Descrevendo o nome das cidades:
nomes <- paste("cidade", LETTERS[1:8], sep= " ")
cidades <- data.frame(x,y,row.names=nomes) #Juntando os dados
cidades #visualizando o objeto cidades
#Visualizando graficamente os pontos que representam as cidades:
 plot(cidades)
#representa-se as coordenadas gráficas dos pontos, o vetor que
#será descrito e o número de pontos a serem identificados:
identify(x,y,nomes,n=4)

par(mfrow=c(1,2))
x<-1:10
y<- c(2,5,9,6,7,8,4,1,3,10) #Define um vetor de valores para y
x;y
plot(x,y) #Plota os gráficos dos valores de x e y
plot (x,y, xlab="Eixo X", ylab="Eixo Y",main="Personalizando um gráfico", xlim=c(0,10), ylim=c(0,10),col="red", pch=22, bg="blue", tcl=0.4, las=1, cex=1.5, bty="l")

#Exemplo 3.2.1

rest <- c(96,96,102,102,102,104,104,108,126,126,128,128,140,156,160,160,164,170,115,121,118,142,145,145,149,112,152,144,122,121,133,134,109,108,107,148,162,96)
par(mfrow=c(1,2))        #Define ou consulta parametros gráficos
hist(rest,nclass=12)     #Plota um histograma dos parametros passados na função
hist(rest,nclass=6)

#Exemplo 3.2.2

x <- c(1,2,3,4,5,6,7)    #Define um vetor de valores para x
barplot(x)               #plota o gráfico de barras dos valores de x
barplot(euro,xlab="Euro conversions",col="red",legend.text="Valor da taxa") #plota um grafico de barras adicionando cor e legend à coluna

#Exemplo 3.2.3

x = c(5,5,5,13,7,11,11,9,8,9)
y = c(11,8,4,5,9,5,10,5,4,10)
boxplot(x,y) #para plotar no mesmo gráfico (comparação)
boxplot(x); boxplot(y) #para plotar em gráficos diferentes

#Exemplo 3.2.4

rf<-c(5.50,5.61,4.88,5.07,5.26,5.55,5.36,5.29,5.58,5.65,5.57,5.53,5.62,5.29,5.4)
stem(rf) #produz um conjunto de "tronco e folha" dos valores em 'x'

#Exemplo 3.2.5

a<-c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(a)<-c("a","b","c","d","e","f") #Define os nomes do sobjetos
pie(a,col = c("red","blue","green","gray", "brown", "black")) #Plota um grafico de torta ou pizza

#exemplo 4.2.1 media
#Exemplo:
> x <- c(10, 14, 13, 15, 16, 18, 12) # X e o vetor de entrada e c e o conjunto de numeros
> mean(x)                            # soma todos os xi*fi dividido pelo somatório de fi
[1] 14                               # a media


#exemplo 4.2.2 mediana
#exemplo
> k <- c(1,3,0,0,2,4,1,2,5)         #K e o vetor de entrada e c e o conjunto de numero
> median(k)                         #faz o somatório da diferença de xi pela media aritmética e divide a somatoria de fi
[1] 2
> g <- c(1,3,0,0,2,4,1,3,5,6)       #G e o vetor de entrada e c o conjunto de numeros.
> median(g)                         # median calcula a mediana em G.
[1] 2.5


#exemplo 4.2.3 moda
#exemplo
> subset(table(), table() == max(table())) 
 #table e um comando ordena o conjunto de numeros em ordem e indica o numero de vezes que um numero se repete

#Exemplo:
> y <- c(7,8,9,10,10,10,11,12)              #y e o vetor de entrada e c recebe o conjunto de numeros.
> table(y)                                  #table e a funcao que ordena e determina a moda.
y
7 8 9 10 11 12
1 1 1 3 1 1
> subset(table(y),table(y)==max(table(y)))  #max(table) vai mostrar o numero que mais se repetiu
10
3

#exemplo 4.2.4 Quartil
#Exemplo:
> z <- c(5,2,6,9,10,13,15)              #z e o vetor de entrada
> summary(z)                            #summary e uma funcao que retorna o 1º e 3º quartil
Min. 1st Qu. Median Mean 3rd Qu. Max.
2.000 5.500 9.000 8.571 11.500 15.000

#exemplo 4.2.5 Centis
#Exemplo:
> q <- c(48,49,51,50,49)                #q e o vetor de entrada
> quantile(q)                           # quantile divide a amostra em 100 partes iguais
0% 25% 50% 75% 100%
48 49 49 50 51

#exemplo 4.2.6 Decis
#Exemplo:
> d <- c(48,49,51,50,49)                # e o vetor de entrada
> quantile(d,seq(0.10,0.9,0.1))         # o quantile recebe o parametro 'd' que faz q calcule em decis.
10% 20% 30% 40% 50% 60% 70% 80% 90%
48.4 48.8 49.0 49.0 49.0 49.4 49.8 50.2 50.6

#exemplo 4.3.2 Amplitude
#Sintaxe:
#Exemplo: Dada a série de dados {20,23,23,28,33,37,37,37,40,44}:
> a <- c(20,23,23,28,33,37,37,37,40,44)                 # a e vetor de entrada
> max(a)                                                #valor maximo que a recebeu
[1] 44
> min(a)                                                #valor minimo que a recebeu
[1] 20
> range(a)                                              #diferença entre o valor minimo e maximo
[1] 20 44
> Amplitude = max(a)-min(a)
> Amplitude
[1] 24                                                  #valor da amplitude
> length(a) #número de elementos da série de dados
[1] 10


#exemplo 4.3.3 variancia 
#Exemplo: Para o vetor {10,11,9,10,10,9,11} obtenha a variância.
> v <-c(10,11,9,10,10,9,11)                             # v e o vetor de entrada
> var(v)                                                # calcula o quadrada da variancia do valor i em relacao a media
[1] 0.6666667


#exemplo 4.3.4 desvio-padrao
#Exemplo: Para o exemplo anterior, do cálculo da variância.
> v <-c(10,11,9,10,10,9,11)                             # v e o vetor de entrada
> sd(v)                                                 #sd(Standard Deviation) que recebe um conjunto de dados e retorna o desvio padrao
[1] 0.8164966
> sqrt(var(v))                                          #outra forma de obter o desvio padrao seria tirando a raiz quadrada da variancia
[1] 0.8164966


#exemplo 4.3.5 coeficiente de variacao
#Exemplo: Para o exemplo anterior, do cálculo do desvio-padrão.
> v <-c(10,11,9,10,10,9,11)                         #v e o vetor de entrada
> CV = 100*sd(v)/mean(v)                            #calcula o desvio padrao *100 dividido pela media de v, com isso recebemos a porcentagem de variacao em relacao a media
> CV
[1] 8.164966 #em torno de 8%