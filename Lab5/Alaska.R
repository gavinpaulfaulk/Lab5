install.packages("readxl")

library(readxl)

e2 <- read_xlsx(path = "Alaska_fixedheader.xlsx")

#fix date format               

install.packages("tidyverse")        
list.files()

a <- readxl::read_excel(path = "Alaska_fixedheader.xlsx", sheet = 1)
head(a)

str(a)

install.packages("stringr")
library(stringr)

#goal make character string of year and month
yr <- as.character(a$year)
mo <- as.character(a$month)
mo <- str_c("0",mo, sep = "")

yr_mo <- str_c(yr,mo,sep = "-")
head(yr_mo)

a$Year <- yr_mo

write.csv(x = a, file = "Alaska_fixedheader.csv")
