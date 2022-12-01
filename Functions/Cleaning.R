setwd("C:/Users/user/Desktop/Computing MTY3/PenguinsAssignment/Functions")

# Clean column names, remove empty rows, remove columns called comment and delta
cleaning <- function(raw_data){
  raw_data %>%
    clean_names() %>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("delta")) %>%
    select(-comments)
}



# Subset the data to only include the penguins that are not NA for the body mass and sex
subset_bodymass <- function(clean_data){
  clean_data %>%
    filter(!is.na(body_mass_g)) %>%
    filter(!is.na(sex)) %>%
    select(sex, body_mass_g)
}

# Subset to contain only penguins who are Adelies, island against body mass, remove NAs
subset_adelies <- function(clean_data){
  clean_data %>%
    filter(species == "Adelie Penguin (Pygoscelis adeliae)")%>% #seems to work
    filter(!is.na(body_mass_g))%>% #not working
    select(species, island, body_mass_g) #error message
}


