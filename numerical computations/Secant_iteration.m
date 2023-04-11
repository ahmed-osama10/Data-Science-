s=input('Enter the function \n','s');
f=inline(s);
A=0;
B=1;
iteration=input('enter num of iterations \n');
counter=1;
xr=B-(((A-B)*f(B)) /(f(A)-f(B)));
while counter<iteration
    A=B;
    B=xr;
    xr=B-(((A-B)*f(B)) /(f(A)-f(B)));
    counter=counter+1;
end
disp('The root is ')
disp(xr)