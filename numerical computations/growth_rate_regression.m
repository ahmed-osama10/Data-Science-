clc
Message1 ='Please enter the first matrix';
Message2='please enter the second matrix'; 
x=input(Message1)
y=input(Message2)
X=1./x
Y=1./y
n=length(X);
sx=sum(X);
sx2=sum(X.^2);
sy=sum(Y); 
sxy=sum(X.*Y);

coefMat=[n sx;sx sx2];
freeMat=[sy;sxy];
res=inv(coefMat)*freeMat;
A=res(1)
B=res(2)
%A=1/a
a=1/A
%B=b/a
b=B/a

y_avg=sum(Y)/n
st=sum((Y-y_avg).^2)
sr=sum((Y-A-B*X).^2)
sy_x=sqrt(sr/(n-2))
r2=(st-sr)/st
r=sqrt(r2)

%[1 2 2.5 4 6 8 8.5 ]
%[.4 .7 .8 1 1.2 1.3 1.4]








