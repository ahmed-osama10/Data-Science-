s=input('Enter the function \n','s');
f=inline(s);


st=input('Enter function diffrentiation \n','s');
df=inline(st);

Xo=input('enter xo \n');
Xr=Xo-(f(Xo)/df(Xo));

counter=1;
iteration=input('Enter the number of iterations ');


while counter<iteration
    Xo=Xr;
    Xr=Xo-(f(Xo)/df(Xo));
    counter=counter+1;
end

disp('the root is ')
disp(Xr)
disp('The counter is ')
disp(counter)