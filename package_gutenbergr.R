
# Trabalhando com textos - Gutenberg -------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data do script: 30/04/22 -----------------------------------------------------------------------------------------------------------------
# Referência: Curso Udemy ------------------------------------------------------------------------------------------------------------------

# Pacote necessário ------------------------------------------------------------------------------------------------------------------------

#install.packages("gutenbergr")
library(gutenbergr) 

# https://www.gutenberg.org/

# Textos disponíveis -----------------------------------------------------------------------------------------------------------------------

view(gutenberg_metadata)

# Acesso ao texto e outras seções ----------------------------------------------------------------------------------------------------------

?gutenberg_works

gutenberg_works(languages = "pt") %>% # Acessa os textos em português
  view()

gutenberg_works(distinct = TRUE, author == "Austen, Jane") %>% # Textos da Jane Austen
  view()

# Buscando por temas -----------------------------------------------------------------------------------------------------------------------

library(dplyr)

gutenberg_subjects %>%
  filter(subject == "Detective and mystery stories") %>%
  view()

gutenberg_subjects %>%
  filter(grepl("Holmes, Sherlock", subject)) %>%
  view()

gutenberg_subjects %>%
  filter(grepl("Handbooks, manuals, etc.", subject)) %>%
  view()
