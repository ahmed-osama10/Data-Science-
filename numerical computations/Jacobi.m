clc
clear
close all
X=zeros(1,3);
sx=input('enter x= ','s');
sy=input('enter y= ','s');
sz=input('enter z= ','s');
fx=inline(sx);
fy=inline(sy);
fz=inline(sz);
err=1;
tol=1e-5;
count=0;
while err>tol
Xold=X;
X=[fx(X(2),X(3)) fy(X(1),X(3)) fz(X(1),X(2))];
errX=(X-Xold)./X;
err=max(abs(errX));
count=count+1;
end
disp('x=')
disp(X(1))
disp('y=')
disp(X(2))
disp('z=')
disp(X(3))
disp('no of iterations')
disp(count)