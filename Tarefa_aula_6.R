# Packages ####
pacotes <- c(
  "dplyr"
)

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}

# Database ####

rm(list=ls())
df <- read.csv("Pokemon_full.csv")

# Filtrando nomes com 'bee' ou 'bel'e criando df1 apenas com estes dados####

df1 <- df %>% 
         filter(grepl("[Bb][Ee][EeLl]", df$name))


  
  
  
  