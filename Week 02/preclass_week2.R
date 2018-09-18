exp.draws.1=rexp(n=200, rate=1)
mean_exp.draws.1=mean(exp.draws.1)
sd_exp.draws.1=sd(exp.draws.1)

exp.draws.0.2=rexp(n=200, rate=0.2)
mean_exp.draws.0.2=mean(exp.draws.0.2)
sd_exp.draws.0.2=sd(exp.draws.0.2)

exp.draws.5=rexp(n=200, rate=5)  
mean_exp.draws.5=mean(exp.draws.5)
sd_exp.draws.5=sd(exp.draws.5)

exp.draws.7.3=rexp(n=200, rate=7.3)
mean_exp.draws.7.3=mean(exp.draws.7.3)
sd_exp.draws.7.3=sd(exp.draws.7.3)

exp.draws.10=rexp(n=200, rate=10)
mean_exp.draws.10=mean(exp.draws.10)
sd_exp.draws.10=sd(exp.draws.10)

hist(exp.draws.1)
plot(exp.draws.1)
plot(exp.draws.10,exp.draws.5)

exp.mean=c(mean_exp.draws.1,mean_exp.draws.0.2,mean_exp.draws.5,mean_exp.draws.7.3,mean_exp.draws.10)
exp.sd=c(sd_exp.draws.1,sd_exp.draws.0.2,sd_exp.draws.5,sd_exp.draws.7.3,sd_exp.draws.10)
exp.rate=c(1,0.2,5,7.3,10)

plot(x=exp.rate,y=exp.mean)
# In the figure, we can see when the rate increases, the mean decreases, and the data match the theory that mean=1/rate in an exponential distribution.
plot(x=exp.rate,y=exp.sd)
# In the figure, we can see when the rate increases, the standard deviation decreases, and the data match the theory that standard deviation=1/rate in an exponential distribution.
plot(x=exp.mean,y=exp.sd)
# In the figure, we can see when mean increases, the standard deviation increase, and the relationship between them is a linear line with interception equals zero. The data match the theory that mean=standard deviation in an exponential distribution.
