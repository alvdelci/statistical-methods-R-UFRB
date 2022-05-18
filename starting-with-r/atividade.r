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