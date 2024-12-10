
#scatterplot of survey data, x2_1 is for years of membership and X5 is for political alignment
plot(srvdata$X2_1,srvdata$X5)
 
#model output and stargazer model output
library(stargazer)

model2 <- lm(X5~X2_1+X3,data=srvdata)
summary(model2)
confint(model2)

stargazer(model2, type="text")
