library("readr")

#Leitura de arquivo CSV
file1 <- paste("/Bootcamp/Datasets/CSV","/contabilidade.csv",sep="")
data0 <- read_csv(file1)
data1 <- read.csv2(file1)
print(data0)
print(data1)

#Leitura de arquivo CSV
file2 <- paste("/Bootcamp/Datasets/CSV","/Iris.csv",sep="")
data2 <- read.table(file2,header = T,sep=",")
head(data2)

summary(data2)

#Leitura de arquivo TXT
file3 <- paste("/Bootcamp/Datasets/TXT","/arquivoTXT.txt",sep="")
data3 <- read.delim(file3)
print(data3)

#Escolhendo o arquivo no momento da leitura
data4 <- read.delim(file.choose(),encoding='utf-8')
print(data4)

#Leitura de arquivo na Interne
URL <- 'http://diretorios.ifb.edu.br/diretorios/908/arquivos/download/certificados.txt'
data6 <- read.delim(URL)
print(data6)
head(data6)

#Criar arquivo
outfile <- 'C:/Bootcamp/Datasets/TXT/ifbdata.txt'

print(outfile)
write.table(data6, outfile, append = FALSE, sep = ",", row.names = FALSE, col.names = TRUE)

data7 <- read.delim(outfile)
head(data7)

#Conferir se um determinado arquivo de dados existe no seu dir.
nameFile <- 'arquivoTXT.txt'
file.exists(nameFile)

nameFile <- 'C:/Bootcamp/Datasets/TXT/arquivoTXT.txt'
file.exists(nameFile)
