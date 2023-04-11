installed.packages("bootstrap",dependencies=TRUE)
library(bootstrap)
data=c(3.56,0.69,0.1,1.84,3.93,1.25,0.18,1.13,0.27,0.5,0.67,0.01,0.61,0.82,
       1.70,0.39,0.11,1.2,1.21,0.72) 
mean(data) #xbar for original sample 
jackmean<-jackknife(data,mean) #xbardot = x for samples - xbar dot 
jack_es=mean(jackmean$jack.values) 
meanjack=mean(data)-jackmean$jack.bias #x bar jack = x bar - bias 
jack_es
mean(data)
jackmean$jack.bias
meanjack
jackmean$jack.se
lowerci=meanjack-1.96*jackmean$jack.se
upperci=meanjack+1.96*jackmean$jack.se

sdmle <- function(data)(sqrt((length(data)-1)/length(data))*sd(data))
sdmle(data)
jacksdmle<-jackknife(data,sdmle) #xbardot = x for samples - xbar dot 
jack_es=mean(jacksdmle$jack.values) #means of sd for samples
sdmlejack=sdmle(data)-jackmean$jack.bias #x bar jack = x bar - bias 
jack_es

jacksdmle$jack.bias
sdmlejack
jacksdmle$jack.se
lowerci=meanjack-1.96*jackmean$jack.se
upperci=meanjack+1.96*jackmean$jack.se 
