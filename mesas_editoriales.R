# Preparar apellidos para comparación
autores_apellidos <- autores$Apellido %>%
  str_squish() %>%
  unique()

# Función editor
editor <- function(editor) {
  autores_apellidos[str_detect(editor, autores_apellidos)]
}

#### Rheumatology ####
Rheumatology <- read_html("editores/Rheumatology (Oxford).html")

# Preparar nombres de editores para comparación 
editores <- Rheumatology %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Rheumatology_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Rheumatology (Oxford)" = "." ) %>% 
  gt

#### Rheumatology International ####
Rheumatology_int <- read_html("editores/Rheumatology International.html")

# Preparar nombres de editores para comparación 
editores <- Rheumatology_int %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Rheumatology_Int_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Rheumatology International" = "." ) %>% 
  gt

#### Int J Rheum Dis ####
Int_J_Rheum_Dis <- read_html("editores/International Journal of Rheumatic Diseases.html")

# Preparar nombres de editores para comparación 
editores <- Int_J_Rheum_Dis %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Int_J_Rheum_Dis_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Int J Rheum Dis" = "." ) %>% 
  gt


#### Autoimmun Rev ####
Autoimmun_Rev <- read_html("editores/Autoimmunity Reviews.html")

# Preparar nombres de editores para comparación 
editores <- Autoimmun_Rev %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Autoimmun_Rev_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Autoimmun Rev" = "." ) %>% 
  gt

#### Front Immunol ####
Front_Immunol <- read_html("editores/Frontiers in Immunology.html")

# Preparar nombres de editores para comparación 
editores <- Front_Immunol %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Front_Immunol_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Front Immunol" = "." ) %>% 
  gt

#### J Clin Immunol ####
J_Clin_Immunol <- read_html("editores/Journal of Clinical Immunology.html")

# Preparar nombres de editores para comparación 
editores <- J_Clin_Immunol %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

J_Clin_Immunol_tabla <- coincidencias %>% 
  tibble %>% 
  rename("J Clin Immunol" = "." ) %>% 
  gt

#### J Clin Med ####
J_Clin_Med <- read_html("editores/J Clin Med.html")

# Preparar nombres de editores para comparación 
editores <- J_Clin_Med %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

J_Clin_Med_tabla <- coincidencias %>% 
  tibble %>% 
  rename("J Clin Med" = "." ) %>% 
  gt


#### J Diabetes Investig ####
J_Diabetes_Investig <- read_html("editores/Journal of Diabetes Investigation.html")

# Preparar nombres de editores para comparación 
editores <- J_Diabetes_Investig %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

J_Diabetes_Investig_tabla <- coincidencias %>% 
  tibble %>% 
  rename("J Diabetes Investig" = "." ) %>% 
  gt


#### Lancet Rheumatol ####
Lancet_Rheumatol <- read_html("editores/The Lancet Rheumatology.html")

# Preparar nombres de editores para comparación 
editores <- Lancet_Rheumatol %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Lancet_Rheumatol_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Lancet Rheumatol" = "." ) %>% 
  gt

#### Mod Rheumatol ####
Mod_Rheumatol <- read_html("editores/Modern Rheumatology.html")

# Preparar nombres de editores para comparación 
editores <- Mod_Rheumatol %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Mod_Rheumatol_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Mod Rheumatol" = "." ) %>% 
  gt


#### Muscle Nerve ####
Muscle_Nerve <- read_html("editores/Muscle Nerve.html")

# Preparar nombres de editores para comparación 
editores <- Muscle_Nerve %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Muscle_Nerve_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Muscle Nerve" = "." ) %>% 
  gt

#### Rheumatol Adv Pract ####
Rheumatol_Adv_Pract <- read_html("editores/Rheumatology Advances in Practice.html")

# Preparar nombres de editores para comparación 
editores <- Rheumatol_Adv_Pract %>%
  html_nodes("p, div, li, td") %>%  
  html_text() %>%
  str_squish() %>%  
  str_split(pattern = "\\s*,\\s*|\\s*\\n\\s*|\\s*\\r\\s*") %>%  
  unlist() %>%
  unique()

# Encontrar coincidencias parciales para revisar
coincidencias <- autores_apellidos[autores_apellidos %in% unlist(sapply(editores, editor))]

Rheumatol_Adv_Pract_tabla <- coincidencias %>% 
  tibble %>% 
  rename("Rheumatol Adv Pract" = "." ) %>% 
  gt