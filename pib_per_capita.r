#Define o diretório

setwd("/home/wendell/Documentos/PIB per capita/");
diretorio <- getwd()

# Lê os dados do arquivo CSV

dados <- read.csv(
  file = paste(diretorio, "/vw_pib_percapita.csv", sep = ""),
  sep = ",", header = TRUE,
  col.names = c("FID", "gid", "UF", "nome", "Censo", "PIB",
                "Pop_est_2009", "PIB_percapita", "Descrição",
                "legenda", "classe", "geom"),
  fileEncoding = "Latin1", encoding = "UTF-8")

pib_per_capita <- c()
estados_nordeste <- c("ALAGOAS", "BAHIA", "CEARÁ",
                      "MARANHÃO", "PARAÍBA", "PERNAMBUCO",
                      "PIAUÍ", "RIO GRANDE DO NORTE", "SERGIPE")
estados_norte <- c("AMAZONAS", "RORAIMA", "AMAPÁ",
                   "PARÁ", "TOCANTINS", "RONDÔNIA", "ACRE")
estados_centro_oeste <- c("GOIÁS", "MATO GROSSO",
                          "MATO GROSSO DO SUL", "DISTRITO FEDERAL")
estados_sudeste <- c("ESPÍRITO SANTO", "MINAS GERAIS",
                     "RIO DE JANEIRO", "SÃO PAULO")
estados_sul <- c("SANTA CATARINA", "RIO GRANDE DO SUL", "PARANÁ")

for (row in 1:nrow(dados)) {
  estado <- dados[row, "UF"]
  
  if (is.element(estado, estados_nordeste)) {
      pib_per_capita <- c(pib_per_capita, dados[row, "PIB_percapita"])
  }
}





