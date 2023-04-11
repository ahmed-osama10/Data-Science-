function [yn,xn] = Euler_imp (fd,x0,y0,yp,h)
F = inline(fd);
yn = y0 +(h/2)*(F(x0,y0)+F(x0+h,yp));
xn = x0+h;
end