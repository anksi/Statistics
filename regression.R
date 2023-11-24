#### basic regression analysis
dat = data.frame(X = iris$Petal.Length,
                 Y = iris$Sepal.Length,
                 Z = iris$Petal.Width)

lm(formula = Y ~ X + Z, data = dat)
lm(formula = Y ~ X + Z + X:Z, data = dat)
#Y = 4.58 + 0.44 X - 1.24 Z + 0.19 X×Z

summary(lm(Y ~ X + Z, data = dat))
summary(lm(Y ~ X + Z + X:Z, data = dat))

#### pay attention to p-value to choose if the models are good enough to work with ....
#### pay attention to r-squared value to find out the variation in the data