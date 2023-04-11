x =[1 3 2 5; 2 4 -6 -4 ; 1 5 3 10] ;

for i=1:2           %column
    for j=i+1:3     %row
        p=x(j,i)/x(i,i);
        x(j,:)=x(j,:)-(p.*x(i,:));
    end
end

x3=x(3,4)/x(3,3);
x2=(x(2,4)-(x(2,3)*x3))/x(2,2);
x1=(x(1,4)-(x(1,3)*x3)-(x(1,2)*x2))/x(1,1);
disp('x1=')
disp(x1)
disp('x2=')
disp(x2)
disp('x3=')
disp(x3)