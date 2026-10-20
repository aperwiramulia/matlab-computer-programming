clc, clear, clf

%a = 1; b= 2; c = 3;
a = input('a = '); b = input('b = '); c = input('c = ');
D = b^2 - 4 *a*c;

if D < 0
    disp('Akar Kompleks')
    x1 = (-b + sqrt(D))/(2*a)
    x2 = (-b + sqrt(D))/(2*a)
    fprintf('x1 = %5.2f + %5.2f i \n', real(x1), imag(x1))
    fprintf('x2 = %5.2f + %5.2f i \n', real(x2), imag(x2))
elseif D == 0
    disp('Akar Kembar')
    x1 = -b / (2*a);
    fprintf('x1 = x2 = %5.2f \n', x1);
else 
    disp('Akar riil berbeda')
    x1 = (-b + sqrt(D))/(2*a);
    x2 = (-b - sqrt(D))/(2*a);
    fprintf('x1 = %5.2f \n', x1)
    fprintf('x2 = %5.2f \n', x2)
end
x0 = -b / (2*a)
x = x0-5:0.1:x0+5;
y = a*x.^2 + b*x + c;
plot(x,y)
grid on
xlabel('X')
ylabel('Y')


roots([a,b,c])
