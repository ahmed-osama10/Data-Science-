clc
s=input('enter the function \n' ,'s');
f=inline(s);

a=input('enter a \n');
b=input('enter b \n');
%f_a=f(a);
%f_b=f(b);
m=a-((a-b)*f(a)/(f(a)-f(b))) %step 1  
%iteration=input('enter the iteration');
counter =0;
error=1;
tol=input('enter the tolreance \n');

 while abs(error)>tol
  mold=m;
   if f(a)*f(m)>0
       a=m;
       m=a-((a-b)*f(a)/(f(a)-f(b)));
   elseif f(a)*f(m)<0
       b=m;
       m=a-((a-b)*f(a)/(f(a)-f(b)));
   else 
       break;
   end
     counter =counter+1;
     error=(m-mold)/m;
 end
 disp('the root is')
 disp(m)
 disp('the iteration is ')
 disp(counter)
 disp('error is ')
 disp(error)