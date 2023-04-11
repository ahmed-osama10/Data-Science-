s=input('Enter the function \n','s');
f=inline(s);
A=0;
B=1;
tol=input('enter tolerance \n');
counter=0;
error=1;
xr=B-(((A-B)*f(B)) /(f(A)-f(B)));

while abs(error)>tol
    A=B;
    B=xr;
    xr=B-(((A-B)*f(B)) /(f(A)-f(B)));
    counter=counter+1;
    error=(xr-B)/xr;
    
end
disp('root is ')
disp(xr)
disp('counter is ')
disp(counter)
disp('error is')
disp(error)