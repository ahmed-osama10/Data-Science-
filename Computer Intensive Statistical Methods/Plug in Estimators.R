install.packages("dplyr", dependencies = TRUE) 
install.packages("ggplot2", dependencies = TRUE) 
install.packages("detzrcr", dependencies = TRUE) 
install.packages("gcookbook", dependencies = TRUE)
library(dplyr) 
library(ggplot2) 
library(detzrcr) 
library(gcookbook)
data(heightweight) 
heightweight 
population = heightweight$heightIn
mu = mean(population); 
mu
sigma = sd(population); 
sigma
population = data.frame(heightweight)
sampl=sample_n(population,size=50)
mean_sampl=sum(sampl$heightIn)/length(sampl$heightIn)
mean_sampl
z_star_95 <- qnorm(0.975) #95% confidence intervals
lower1 =mean_sampl-1.96 * sigma/sqrt(50)
upper1 =mean_sampl+1.96 * sigma/sqrt(50)
lower1
upper1
var(sampl$heightIn)
sd(sampl$heightIn)
sd =sqrt(var(sampl$heightIn))
sd
lower2 =mean_sampl-1.96 * sd/sqrt(50)
upper2 =mean_sampl+1.96 * sd/sqrt(50)
lower2
upper2
lower3 =mean_sampl-2.262 * sd/sqrt(50)
upper3 =mean_sampl+2.262 * sd/sqrt(50)
lower3
upper3


population = data.frame(heightweight)
sampl=sample_n(population,size = 200)
ggplot(sampl, aes(x = heightIn)) + 
  stat_ecdf() 
mean_est=sum(sampl$heightIn)/length(sampl$heightIn) 
mean_est
var_est=sum(((sampl$heightIn)-mean_est)^2)/length(sampl$heightIn) #sigma^2=(xi-xbar)^2/n
var_est
sqrt(var_est)

calc_ecdf=calc_dkw(sampl, column = "heightIn", alph=0.05)
calc_ecdf

calc_ecdf=calc_ecdf[2:201,]
ggplot() +
  stat_ecdf(data=heightweight, aes(x = heightIn),colour="#0072B2", size=.7)+
  geom_step(data = calc_ecdf, aes (x=x,y=low)) +
  geom_step(data = calc_ecdf, aes (x=x,y=high))
