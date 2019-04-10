#if z is norm(mean = 0,sd = 1)
#find P(Z>2.64)
pnorm(2.64,lower.tail = FALSE)
#FIND p(|Z|>1.39)
pnorm(-1.39)

#2. Suppose p = the proportion of students who are admitted to the graduate school
#of the University of California at Berkeley, and suppose that a public relation
#officer boasts that UCB has historically had a 40% acceptance rate for its graduate
#school. Consider the data stored in the table UCBAdmissions from 1973. Assuming
#these observations constituted a simple random sample, are they consistent with the
#officerâ..s claim, or do they provide evidence that the acceptance
#rate was significantly less than 40%?
#Use an Î± = 0.01 significance level.

#our null hypothesis in this problem is
#H0: p=0.4
#and alternate hypothesis is
#h1: p<0.4
#reject null hypothesis if p is too small that is if
# p^-0.4/sqrt(0.4(1-0.4)/n) < -z(alpha)

qnorm(0.99)

#our only remaining thask is to fins=d value of test statistics and se where it falls reltive to critical value 
#we can find number of peopleadmitted and not admitted to ucb graduate school
ex<-as.data.frame(UCBAdmissions)
head(ex)
help(xtabs)
xtabs(Freq~Admit,data = ex)

#admit
#admitted Rejected
#1755     2771

#now calculTate the value of test stat
phat<-1755/(1755+2771)
print(phat)
(phat - 0.4)/sqrt(0.4*0.6/(1755 + 2771))
#our test stat is not less that -2.32 so it does not  fall into critical regression. thus fail to rejecy
#null hypothesis that true proportion of student admitted  into ucb graduate schol is kess than 40%
#observed data are consistent with officers clain at alpha= 0.01 significance level

pnorm(-1.680919)