install.packages("htmlwidgets")
install.packages("tidyverse")
library("tidyverse")
library("stringr")






# PART2 QUESTÝON 1

set.seed(2017555506)

sentences <- stringr::sentences
MyStrings<-sentences[sample(nchar(sentences), 100)] 
MyStringsDatas<-unlist(strsplit(gsub("\\.","",MyStrings)," "))
MyStringsDatas<-unique(MyStringsDatas)


-----------------------------
  # PART 2 QUESTÝON 2

  StartStrings<-str_view_all(MyStringsDatas,"^a.*e$",match=TRUE)  

----------------------
  
  # PART2 QUESTÝON 3 
  
  Stringlowel<-MyStringsDatas[str_count(MyStringsDatas,"[aeiou]")>3]
    
    StringLowel
  
    
---------------------------
      
     #PART 2 QUESTÝON 4 
      
      
      
      
      StringLength<-tail(MyStringsDatas[order(str_count(MyStringsDatas,"."))], 5)
    
      StringLength
      
      
  ------------------
    # part2 QUESTÝON 5 
        
        
        words<-c("age","any","day","exp","her","pro","the")
      
        String_match<-str_c(words,  collapse="|") 
    
        
          String_has<-str_subset(MyStringsDatas, String_match)
    
        
      