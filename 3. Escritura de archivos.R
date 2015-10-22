#Se define el path de nuestros archivos de datos 
file.path("G:","Cursos","Programacion en R","R-Basic-master",
          "read_data")

#para definir el file.path de un unico archivoarchivo 
file.path("G:","Cursos","Programacion en R","R-Basic-master",
          "read_data","data_read.xlsx")


getwd() #para conocer el escritorio de trabajo
wd0<-"G:/Cursos/Programacion en R/R-Basic-master" #asignamos la direccion del escritorio de trabajo 0
setwd(wd0) #cambiamos el escritorio de trabajo
getwd()
wd1<-"G:/Cursos/Programacion en R/R-Basic-master/read_data" #asignamos el espacio de trabajo 1
list.files() #para ver los archivos del espacio de trabajo
setwd(wd1)
getwd()
list.files() #listamos todos los archivos del espacio de trabajo nuevo
list.files(pattern = ".txt") #lista todos los archivos .txt del espacio  de trabajo

setwd(wd0)
file.exists("ssl") #preguntamos si hay la carpete ssl en el espacio de trabajo
dir.create("ssl") #creamos la carpeta ssl

setwd(wd1)
bd<-0
bd1 <- read.table(file = "data_read_tab.txt", sep = "\t",dec = ",",header = T,
                  stringsAsFactors = FALSE) 
#EL stringsAsFactors = FALSE permite dejar caracter por defecto
str(bd1)
names(bd1) #nombres de las columnas o variables
rm("bd") #para eliminar objetos
bd2<-read.table(file = "data_ejer_tab.txt",sep = "\t",dec = ",",header = T)
str(bd2); dim(bd2);ncol(bd2);nrow(bd2)
bd3<-read.table(file = "data_read.csv",sep = ",",dec = ".",header = T) #lectura de archivos csv con read.table
bd5<-read.table(file = "data_ejer.csv",sep = ",",dec = ".",header = T) #lectura de archivos csv con read.table
str(bd5)

bd1<-read.csv("data_read.csv") #considera los parametros por default
dim(bd1)
bd2<-read.csv2(file="data_read.csv",sep = ",",dec = ".") #considera los parametros por default
dim(bd2)

install.packages("readxl",dependencies = T, type = "source") 
library(readxl)
ls("package:readxl") #para ver las funciones del paquete readxl
dir_arch<-file.path(wd1, "data_read.xlsx") #asignamos la direcci?n del 
excel_sheets(path=dir_arch) #para conocer los nombres de las hojas del archivo de excel
bd1<-read_excel("data_read.xlsx", sheet="datos",
                col_names=T, na=c(""))



