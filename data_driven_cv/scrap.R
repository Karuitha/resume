library(rvest)
library(tidyverse)

read_html("https://www.foodnetwork.com/recipes/alton-brown/guacamole-recipe-1940609") %>% 

        html_nodes(".o-Ingredients__a-Ingredient") %>% 
        
        html_text() %>% 
        
        str_remove_all("\\n") %>% 
        
        parse_character()
        
 
read_html("https://www.foodnetwork.com/recipes/alton-brown/guacamole-recipe-1940609") %>% 
        
        html_nodes(".o-Method__m-Step") %>% 
        
        html_text() %>% 
        
        str_remove_all("\\n") %>% 
        
        parse_character()    
