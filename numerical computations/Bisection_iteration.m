clc 
s=input('enter the function \n','s');
f=inline(s);
a=1;
b=2;
xr=(a+b)/2;
n=5;
counter =1;
 while counter<n
   if f(a)*f(xr)>0
       a=xr;
     xr=(a+b)/2;
   elseif f(a)*f(xr)<0
       b=xr;
     xr=(a+b)/2;
   else 
       break;
   end
     counter =counter+1;
 end
 disp('the root is')
 disp(xr)
