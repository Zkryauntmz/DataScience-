install.packages("tidyverse")
install.packages("readr")
install.packages("ggplot2")

library("tidyverse")
library("readr")
library("dplyr")
library("ggplot2")




 covid.data.2020 <- read.delim("~/R/covid-data-2020.txt")
   View(covid.data.2020)
  
    set.seed(2017555506)
    
    Mydatas <- covid.data.2020[sample(nrow(covid.data.2020), 1000), ]
    ------------------------------------- 
      MydatasQuantile<-Mydatas %>%
      group_by(month,location) %>%
      summarize(min=min(new_cases),Quantile1=quantile(new_cases,0.25,na.rm=TRUE),
                Median=quantile(new_cases,0.50,na.rm=TRUE),
                Quantile3=quantile(new_cases,0.75,na.rm=TRUE),max=max(new_cases))
      
view(MydatasQuantile)
     
-------------------------------------    
    #PART 1 -  QUESTÝON  2 

  
  Mydatas %>% top_n(1000 , new_cases   ) %>% 
    distinct(location, .keep_all = TRUE) %>%
    select( location , new_cases , new_deaths  ) %>%
    arrange(-new_cases)
  
-----------------------------------------------------------
  #PART1 QUESTÝON 3
 
    Mydatas %>% 
      distinct(location, .keep_all = TRUE) %>%
      arrange(desc(new_cases)) %>%
      slice_head(n = 47 ) %>%
      select(location, year , month , new_cases)
    
    
    
-------------------------------------------
  
      
      # PART1 QUESTÝON 4 
      MySelected<-filter(Mydatas,location ==c("Turkey","Spain","Italy") )
      
 
  
    ggplot(data=MySelected) +                                            
      geom_point(mapping = aes(x = month, y = new_cases , color= location ) ) +
      labs(title="the relationship between Months and Cases values ", x="MONTH", y="CASES")
  
  
 
  
  -----------------------------------
   
    
    sentence <- stringr::sentences
    sample<-sentence[sample(nchar(sentence), 100)] #Sampling

  

  
