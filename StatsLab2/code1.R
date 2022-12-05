Xi = c(
    rep(2.56, times=36),
    rep(2.59, times=38),
    rep(2.61, times=40),
    rep(2.65, times=42),
    rep(2.66, times=36),
    rep(2.68, times=35)
    )
Yi = c(
    rep(2.64, times=36),
    rep(2.66, times=37),
    rep(2.71, times=39),
    rep(2.80, times=41),
    rep(2.86, times=38),
    rep(2.88, times=36)
    )
print('Xi: ')
print(Xi)
print('Yi: ')
print(Yi)

boxplot(Xi, Yi)
print(t.test(Xi, Yi))