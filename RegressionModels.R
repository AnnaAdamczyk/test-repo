---
title: "w_1"
author: "Anna Adamczyk"
date: "Saturday, October 11, 2014"
output: html_document
---
```{r, echo=FALSE, results='hide'}
require(UsingR)
data(galton)

```


```{r , galton,fig.height=3.5,fig.width=8}
par(mfrow=c(1,2))
hist(galton$child,col="blue",breaks=100)
hist(galton$parent,col="blue", breaks=100)
par(mfrow=c(1,1))
```

```{r}
library(manipulate)
myHist <- function(mu){
  hist(galton$child,col="blue",breaks=100)
  lines(c(mu, mu), c(0, 150),col="red",lwd=5)
  mse <- mean((galton$child - mu)^2)
  text(63, 160, paste("mu = ", mu))
  text(63, 150, paste("MSE = ", round(mse, 2)))
}

manipulate(myHist(mu), mu = slider(62, 74, step = 0.5))

```

