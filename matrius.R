data("LifeCycleSavings")
## les posarem en format matriu per treballar
# separem la matriu de dades de la resta d'info
X = data.matrix(datafr)

# manipulant el data frame
n = dim(X)[1]
p = dim(X)[2]

# matrius auxiliars utils
uns.n = matrix(1,n,1)
id.n = diag(n) # la matriu identitat de n x n

# vector de mitjanes
vm = t(X) %*% uns.n /n

# la matriu centradora n x n
M = id.n - uns.n %*% t(uns.n)/n 

# dades centrades
Xc = M %*% X
# o be
Xc = X - uns.n %*% t(vm)
# es el mateix?
round(M %*% X - (X - uns.n %*% t(vm)),3)
# la igualtat s'expressa amb (doble) ==
round(M %*% X,10) == round(X - uns.n %*% t(vm),10)
