
suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

#setwd("D:/Data Science/JHU/Capstone Project/Shiny App/Test4")

load("./nGramData/twoGramFinalData.RData")
load("./nGramData/threeGramFinalData.RData")
load("./nGramData/fourGramFinalData.RData")


dataCleaner<-function(text){
        
        cleanText <- tolower(text)
        cleanText <- removePunctuation(cleanText)
        cleanText <- removeNumbers(cleanText)
        cleanText <- str_replace_all(cleanText, "[^[:alnum:]]", " ")
        cleanText <- stripWhitespace(cleanText)

        return(cleanText)
}

cleanInput <- function(text){
        
        textInput <- dataCleaner(text)
        textInput <- txt.to.words.ext(textInput, 
                                      language="English.all", 
                                      preserve.case = TRUE)
        
        return(textInput)
}


nextWordPrediction <- function(wordCount,textInput){
        
        if (wordCount>=3) {
                textInput <- textInput[(wordCount-2):wordCount] 
                
        }
        
        else if(wordCount==2) {
                textInput <- c(NA,textInput)   
        }
        
        else {
                textInput <- c(NA,NA,textInput)
        }
        
        
        ### 1 ###
        wordPrediction <- as.character(fourGramFinalData[fourGramFinalData$unigram==textInput[1] &
                                                             fourGramFinalData$bigram==textInput[2] &
                                                             fourGramFinalData$trigram==textInput[3],][1,]$quadgram)
        
        if(is.na(wordPrediction)) {
                wordPrediction1 <- as.character(threeGramFinalData[threeGramFinalData$unigram==textInput[2] & 
                                                                       threeGramFinalData$bigram==textInput[3],][1,]$trigram)
                
                if(is.na(wordPrediction)) {
                        wordPrediction <- as.character(twoGramFinalData[twoGramFinalData$unigram==textInput[3],][1,]$bigram)
                }
        }
        
        
        print(wordPrediction)
        
}