function [yn,xn] = Euler (fd,x0,y0,h)
F = inline(fd);
yn = y0+h*(F(x0,y0));
xn = x0+h;
end