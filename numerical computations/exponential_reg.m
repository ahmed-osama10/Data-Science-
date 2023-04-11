clc
Message1 ='Please enter the first matrix';
Message2='please enter the second matrix';
x=input(Message1)
y=input(Message2)
Y=log(y)
n=length(x)
sx=sum(x);
sx2=sum(x.^2);
sY=sum(Y);
sxY=sum(x.*Y);

coefMat=[n sx;sx sx2];
freeMat=[sY;sxY];
res=inv(coefMat)*freeMat;
A=res(1)
b=res(2)
%A=ln(a)
a=exp(A)
y_avg=sum(Y)/n
st=sum((Y-y_avg).^2)
sr=sum((Y-A-b*x).^2)
sy_x=sqrt(sr/(n-2))
r2=(st-sr)/st
r=sqrt(r2)


%[1 2 2.5 4 6 8 8.5 ]
%[.4 .7 .8 1 1.2 1.3 1.4]




