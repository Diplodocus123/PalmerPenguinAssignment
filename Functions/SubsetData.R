read.csv("C:/Users/user/Desktop/Computing MTY3/PenguinsAssignment/CleanData/clean_data.csv")

remove_empty_body_mass <- function(clean_data){
  
  clean_data %>% filter(!is.na(body_mass_g)) 
    clean_data %>% select(sex, body_mass_g)
}

?select
?filter
