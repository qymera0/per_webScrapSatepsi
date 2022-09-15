# LOAD PACKAGES -----------------------------------------------------------

library(tidyverse)

# READ FILE

df <-
        read.table('satepsi.txt', sep = '+', stringsAsFactors = F) %>% 
        t() %>%
        as_tibble() %>% 
        slice(-1) %>% 
        rename('text' = 'V1')

dfSplit <-
        df %>%
        mutate(
                testName = str_split(text, pattern = 'Autores')[[1]][[1]],
                autor = str_split(text, pattern = 'Editora')[[1]][[1]],
                editora = str_split(text, pattern = 'Construto')[[1]][[1]],
                constructo = str_split(text, pattern = 'Construto')[[1]][[1]]
        )
    
        



     
