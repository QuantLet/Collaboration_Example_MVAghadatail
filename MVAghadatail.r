# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Name of QuantLet : MVAghadatail
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Published in : Applied Multivariate Statistical Analysis
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Description : Plots four probability density functions 
# (left) and four tails (right) in comparison of the NIG, 
# the Laplace, the Cauchy and the Gauss distribution
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Keywords : pdf, Cauchy distribution, gaussian, tail,
# laplace, plot
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# See also : 
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Author : Wolfgang Haerdle
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Submitted : Sun, January 29 2012 by Dedy Dwi Prastyo
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Example : Shows probability density plots and tails
# in comparison
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

install.packages(c("VGAM", "fBasics"))
library(VGAM)
library(fBasics)

#Graphical comparison of the NIG distribution and normal distribution

par(mar = c(5,5,5,5))
par(mfrow = c(1,2))
xx = seq(-6, 6, by =0.1)
plot(xx, dlaplace(xx, location = 0, scale = 1), type = "c", 
  ylab = "Y", xlab = "X", col = "black", lwd = 1, cex.lab = 2, cex.axis = 2)
lines(xx, dnig(xx, alpha = 1, beta = 0, delta = 1, mu = 0), 
  type = "l", col = "green", lwd = 3)
lines(xx, dcauchy(xx, 0, 1),type = "p", ylim = c(0, 0.4), 
  ylab = "Y", xlab = "X", col = "blue", lwd = 1)
lines(seq(-6, 6, 0.01), dnorm(seq(-6, 6, 0.01)), type = "l", 
  col = "red", lwd = 2)
legend(x = 2, y = 0.4, legend = c("Laplace", "NIG", "Cauchy", "Gaussian"), 
  pch = c(20, 20, 20, 20), col = c("black", "green", "blue", "red"), 
  bty = "n")
title("Distribution comparison")

plot(xx, dnig(xx, alpha = 1, beta = 0, delta = 1, mu = 0), 
  ylim = c(0, 0.02), xlim = c(-5, -4), type = "l", ylab = "Y", 
  xlab = "X", col = "green", lwd = 3, cex.lab = 2, cex.axis = 2)
lines(xx, dlaplace(xx, location = 0, scale = 1), type = "c", 
  col = "black", lwd = 1)
lines(xx, dcauchy(xx, 0, 1), type = "p", col = "blue", lwd = 1)
lines(seq(-6, 6, 0.02), dnorm(seq(-6, 6, 0.02)), type = "l", 
  col = "red",lwd = 3)
legend(x =-4.5, y = 0.014, legend = c("NIG", "Laplace", "Cauchy", 
  "Gaussian"), pch = c(20, 20, 20, 20), col = c("green", "black", 
  "blue", "red"), bty = "n")
title("Tail comparison")
