library(forecast)

# Ler o arquivo CSV
df <- read.csv("./Dados_Utilizados/NEE_Santarem.csv", header = TRUE, sep = ",")

# Criar série temporal
time_series <- ts(df$NEE, frequency = 7)

# Limpar a série temporal
cleaned_series <- tsclean(time_series)

# Adicionar a série limpa de volta ao dataframe original
df$Cleaned_NEE <- cleaned_series

# Salvar o dataframe atualizado como CSV
write.csv(df, file = "./Dados_Utilizados/cleaned_NEE_Santarem.csv", row.names = FALSE)

# Exibir as primeiras linhas da série limpa
print(head(cleaned_series))
