clc
clear
close all
xn = 0.1;
h =0.05;
x0 = 0;
y0 = 1;
fd = 'y+0*x';
no_of_itr = (xn-x0)/h;
iteration = 0;
for i=1 :no_of_itr
    iteration = iteration +1 ;
    yp = Euler(fd,x0,y0,h);
    [y0,x0] = Euler_imp(fd,x0,y0,yp,h);
end
disp('number of iteration')
disp(iteration)
