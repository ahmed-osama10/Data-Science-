clc,clear;
f = input('enter function : ','s');
F = inline(vectorize(f));
xi = input('enter xi : ');
h = input('enter h : ');
% 1st order
d1forward = (F(xi+h)-F(xi))/h
d1backward = (F(xi)-F(xi-h))/h
d1centeral = (F(xi+h)-F(xi-h))/(2*h)
%Second Order 
d2centeral = (F(xi+h)-2*F(xi)+F(xi-h))/h^2
%Exact 
f2 = str2sym(f);
fd = diff(f2);
sd = diff(f2,2);
%substitution
fd_exact = subs(fd,xi)
sd_exact = subs(sd,xi)

