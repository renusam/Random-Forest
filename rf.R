install.packages("randomForest")
library("randomForest")


titanic.train$Survived <- as.factor(titanic.train$Survived)
titanic.rf <- randomForest(Survived ~ . - Name - Cabin - Ticket,
                           data = titanic.train, 
                           na.action = na.roughfix)
head(titanic.train)
titanic.train[3,]                                                  
predict(titanic.rf, titanic.train[3,], "vote", norm.votes = FALSE) # votes count-  0: 243, 1: 257
predict(titanic.rf, titanic.train[3,], "prob")                     # probabilities- 0: 0.486, 1: 0.514
