remove_empty_body_mass <- function(penguins_clean){
  data_clean %>%
    filter(!is.na(body_mass_g)) %>%
    select(sex, body_mass_g)
}