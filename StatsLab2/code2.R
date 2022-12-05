Xi = c(
    rep(11.16, times=38),
    rep(11.26, times=39),
    rep(11.36, times=43),
    rep(11.46, times=40),
    rep(11.56, times=39),
    rep(11.76, times=35)
    )
Yi = c(
    rep(11.26, times=36),
    rep(11.36, times=36),
    rep(11.66, times=40),
    rep(11.76, times=44),
    rep(11.96, times=41),
    rep(12.26, times=37)
    )
print('Xi: ')
print(Xi)
print('Yi: ')
print(Yi)

boxplot(Xi, Yi)
print(t.test(Xi, Yi))