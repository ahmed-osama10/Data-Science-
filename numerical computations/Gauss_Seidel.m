clc,clear
X=zeros(1,3);

x=input('Enter x \n','S');
FX=inline(x);
y=input('Enter y \n','S');
FY=inline(y);
z=input('Enter z \n','S');
FZ=inline(z);

tol=1e-4;
error=1;
counter=0;

while  error >tol
    Xold=X;
    X(1)=FX(X(2),X(3));
    X(2)=FY(X(1),X(3));
    X(3)=FZ(X(1),X(2));
    
    errorx=(X-Xold)./X;
    error=max(abs(errorx));
    counter=counter+1;
end

disp('X=')
disp(X(1))
disp('Y=')
disp(X(2))
disp('Z=')
disp(X(3))
disp('number of iteration');
disp(counter)
