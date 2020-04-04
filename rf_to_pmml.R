install.packages("pmml")
library("pmml")
pmml <- pmml(titanic.rf)
saveXML(pmml, "titanic_rf.pmml")