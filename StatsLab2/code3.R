Xi = c(
    rep(9.82, times=36),
    rep(9.90, times=35),
    rep(10.01, times=36),
    rep(10.24, times=37),
    rep(10.50, times=36),
    rep(10.82, times=35)
    )
Yi = c(
    rep(9.50, times=36),
    rep(9.56, times=36),
    rep(9.68, times=35),
    rep(9.90, times=36),
    rep(10.03, times=37),
    rep(10.50, times=35),
    rep(10.52, times=35)
    )
print('Xi: ')
print(Xi)
print('Yi: ')
print(Yi)

boxplot(Xi, Yi)
print(t.test(Xi, Yi))