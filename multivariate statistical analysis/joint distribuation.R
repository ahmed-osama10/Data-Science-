install.packages("matlib")
library(matlib)
muo=matrix(c(1,-2,4,3),nrow = 4,ncol = 1,byrow = TRUE)
sigma=matrix(c(16 ,-10, -6 ,4,-10 ,25, 0, -12,-6, 0, 25, 6,4, -12, 6, 16),nrow = 4,ncol = 4,byrow = TRUE)
V=diag(diag(sigma))
V1=inv(sqrt(V))
# to find corr matrix
ro=V1*sigma*V1
ro
# to find joint distribuation
C=matrix(c(0, 2, 0, -1,1, -2 ,0, 3,1, -2, 3, -1),nrow = 3,ncol = 4,byrow = TRUE)
b=matrix(c(-5,8,0),nrow = 3,ncol = 1,byrow = TRUE)
muoY=C%*%muo+b
sigmaY=C%*%sigma%*%t(C)
Covxy=sigma%*%t(C)
Covxy
#to find conditional distribuation (X3 , X4 ) given X1 = X2 = 4
mu1=matrix(c(1,-2),nrow = 2,byrow = TRUE)
mu2=matrix(c(4,3),nrow = 2,byrow = TRUE)
s11=matrix(c(16, -10,-10, 25 ),nrow = 2 , byrow = TRUE) 
s12=matrix(c(-6,4,0 ,-12 ),nrow = 2 , byrow = TRUE)
s21=t(s12);
s22=matrix(c(25,6,6 ,16 ),nrow = 2 , byrow = TRUE)
X1=matrix(c(4,4),nrow = 2,byrow = TRUE)
m21=mu2+(s21%*%inv(s11)%*%(X1-mu1))
m21
sigma21=s22-(s21%*%inv(s11)%*%s12)
sigma21