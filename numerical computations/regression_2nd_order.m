clc
Message1 ='Please enter the first matrix';
Message2='please enter the second matrix';
x=input(Message1)
y=input(Message2)
n=length(x);
sx=sum(x);
sx2=sum(x.^2);
sx3=sum(x.^3);
sx4=sum(x.^4);
sy=sum(y);
sxy=sum(x.*y);
sx2y=sum(x.^2.*y);
coefMat=[n sx sx2;sx sx2 sx3;sx2 sx3 sx4];
freeMat=[sy;sxy;sx2y];
res=inv(coefMat)*freeMat;
a0=res(1)
a1=res(2)
a2=res(3)

y_avg=sum(y)/n
st=sum((y-y_avg).^2)
sr=sum((y-a0-a1*x-a2*x.^2).^2)
sy_x=sqrt(sr/(n-2))
r2=(st-sr)/st
r=sqrt(r2)
