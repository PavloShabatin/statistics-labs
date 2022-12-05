Xi = c(180, 179, 180, 184, 191, 181, 192, 185)
Yi = c(8, 9, 10, 11, 1, 6, 4, 3)
print('Xi: ')
print(Xi)
print('Yi: ')
print(Yi)

plot(Xi, Yi, pch = 19, col = "black")

abline(lm(Yi ~ Xi), col = "red", lwd = 3)
print("Correlation:")
print(cor(Xi, Yi, method="spearman"))