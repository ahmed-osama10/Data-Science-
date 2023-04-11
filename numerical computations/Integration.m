clear,clc
f = input('Enter the function : ','s');
F = inline(vectorize(f));
a = input('Enter the lower limit : ');
b = input('Enter the uper limit : ');
n = input('Enter n : ');
h = (b-a)/n;
x = a:h:b;
y = F(x)
EL = h*sum(y(1:n))
ER = h*sum(y(2:end))
Trapezodial = (h/2)*(y(1)+2*sum(y(2:n))+y(end))
Simpon = (h/3)*(y(1)+4*sum(y(2:2:n))+2*sum(y(3:2:n))+y(end))
%Exact integration
f2 = str2sym(f);
exact = double(int(f2,a,b))
