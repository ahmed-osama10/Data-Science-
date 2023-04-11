s=input('Enter the function \n','s');
f=inline(s);


st=input('Enter function diffrentiation \n','s');
df=inline(st);

Xo=input('enter xo \n');
Xr=Xo-(f(Xo)/df(Xo));

tol=input('enter the tol');
error=1;
counter=0;

while abs(error)>tol
    Xo=Xr;
    Xr=Xo-(f(Xo)/df(Xo));
    counter=counter+1;
    error=(Xr-Xo)/Xr;
end

disp('the root is ')
disp(Xr)
disp('The counter is ')
disp(counter)
disp('the error is ')
disp(error)