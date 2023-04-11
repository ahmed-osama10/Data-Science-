function [y,x0] = R_k (fd,x0,y0,h)
F = inline(fd);
k1 = h*F(x0,y0);
k2 = h*F(x0+h/2,y0+k1/2);
k3 = h*F(x0+h/2,y0+k2/2);
k4 = h*F(x0+h,y0+k3);
y = y0+1/6*(k1+2*k2+2*k3+k4);
x0 = x0+h;
end
