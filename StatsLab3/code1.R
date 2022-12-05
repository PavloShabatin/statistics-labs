Xi = c(34.26, 35.46, 33.06, 37.16, 28.36)
Yi = c(6.26, 6.46, 6.86, 6.56, 4.66)
print('Xi: ')
print(Xi)
print('Yi: ')
print(Yi)

plot(Xi, Yi, pch = 19, col = "black")

abline(lm(Yi ~ Xi), col = "red", lwd = 3)
print("Correlation:")
print(cor(Xi, Yi, method="spearman"))