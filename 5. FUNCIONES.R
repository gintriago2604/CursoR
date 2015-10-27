##FUNCIONES##

M<-matrix(seq(1:9), nrow = 3, ncol = 3)
B=matrix(0,3,3)
for(i in 1:3){
  for(j in 1:3){
  B[3*i-3+j ,1] <-i
  B[3*i-3+j ,2] <-j
  B[3*i-3+j ,3] <-M[i,j]
  } 
}
M; B


N<-matrix(seq(1,12),nrow = 4,ncol = 3)
C=matrix(0,ncol(N)*nrow(N),3)
for(i in 1:nrow(N)){
  for(j in 1:ncol(N)){
    C[ncol(N)*i-ncol(N)+j ,1] <-i
    C[ncol(N)*i-ncol(N)+j ,2] <-j
    C[ncol(N)*i-ncol(N)+j ,3] <-N[i,j]
  } 
}
N; C

logn<- function(x,n){
  return(log(x,base = n))
  }
logn(8,2)
logn(2,8)
logn(x=8,n=2)
logn(n=2,x=8)


body(logn) #para extraer el cuerpo de la función
formals(logn) #determina los argumentos necesarios de la función
environment(logn) #lugar de la memoria en la cual se ubican las variables de la funcion

media<-function(x){
  s<-sum(x)
  n<-length(x)
  media<-s/n
  return(media)
}
media(c(1:10))
environment(media)

hipote <- function(x,y){
  return(sqrt(x^2+y^2))
}
hipote(3,4)

hip <- function(x=3, y=4){
  return(sqrt(x^2+y^2))
}
hip()
hip(x=6)
hip(y=8)
hip(10,13)
hip(y=13,x=10)


f <- function(x, y) {
  #z <- 2
  return(x^2 + y / z)
}
f(3, 6)
z <- 8
f(3, 6)

remove(z)

f <- function(x, y) {
  z <- 2
  return(x^2 + y / z)
}
f(3, 6)


z<-1
g <- function(x, y) {
  z<-0
  return(x + y + z)
}
g(1, 1)


y <- 10
f <- function(x) {
  y <- 2
  y^2 + g(x)
}
g <- function(x) { 
  x*y
}
f(3)


a<-2
b<-1
f<- function(x){
  a*x+b
}
g<-function(x){
  a<-1; b<-2; f(x)
}
g(2)


x<-1
h<-function(){
  y<-2
i<-function(){
  z<-3;c(x,y,z)}
i()
  }
h()


logi <- function(ini, fin, color="red") {
  x <- seq(ini, fin, by=0.1)
  y <- exp(x) / (1 + exp(x))
  plot(y ~ x, type='b', col=color, main="Curva Logistica", xlab="Eje x", ylab="Eje y")
  #l=linea, o=puntos, b=lineas y puntos
}

logi(ini=-2, fin=2)
logi(-6, 6, "blue")
logi(color = "green",-6, 6) #black, green, orange, brown, red
logi(c = "darkgreen",-6, 6) #anteponiendo dark se oscuresen o ligth


logi1 <- function(ini, fin, color="red") {
  x <- seq(ini, fin, by=0.1)
  y <- exp(x) / (1 + exp(x))
  plot(y ~ x, type='o', col=color, main="Curva Logistica", xlab="Eje x", ylab="Eje y")
  #l=linea, o=puntos, b=lineas y puntos
}
logi1(ini=-2, fin=2)



