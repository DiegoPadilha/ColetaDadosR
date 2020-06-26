library(jsonlite)

jsondata1 <- read_json(file.choose(), simplifyVector = FALSE)
print(jsondata1)

jsondata2 <- read_json(file.choose(), simplifyVector = TRUE)
print(jsondata2)

jsonlist <- list(jsondata1, jsondata2)
jsonlist
write_json(jsonlist, 'C:/Bootcamp/Datasets/JSON/studentsSmall3.json')

jsondata3 <- read_json('C:/Bootcamp/Datasets/JSON/studentsSmall3.json', simplifyVector = TRUE)
print(jsondata3)
