clc 
%??? ???? ??? ??????? ????? ???? ??tolerance ??? ???? ???? ?? RPE
s=input('enter the function \n' ,'s');
f=inline(s);
a=1;
b=2;
xr=b-((a-b)*f(b))/((f(a)-f(b))) ;%step1 ???? ???
counter =0;
error=1;%intial value
tol=input('enter the tolreance \n');

 while abs(error)>tol %???? ?? ?? ABS ????? ???? ??????? ?? 
  xr_old=xr;
   if f(a)*f(xr)>0
       a=xr;
       xr=b-((a-b)*f(b))/((f(a)-f(b)));
   elseif f(a)*f(xr)<0
       b=xr;
       xr=b-((a-b)*f(b))/((f(a)-f(b)));
   else 
       break;
   end
     counter =counter+1;
     error=(xr-xr_old)/xr;
 end
 disp('the root is')
 disp(xr)
 disp('the iteration is ')
 disp(counter)
 disp('error is ')
 disp(error)