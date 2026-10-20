clc %Pembersihan layar
clear %Pembersihan memeori

a = 1
b = 3
c = -6

D = b^2 - 4*a*c

x1 = (-b + sqrt(D))/(2*a)
x2 = (-b - sqrt(D))/(2*a)

if D >= 0 
    fprintf('Akar Pertama x1 = %5.2f \n', x1)
    fprintf('Akar Kedua x2 = %5.2f \n', x2)
else
    fprintf('Akar Pertama x1 = %5.2f + %5.2f i \n', -b/(2*a), sqrt(-D)/(2*a))
    fprintf('Akar Kedua x2 = %5.2f - %5.2f i \n', -b/(2*a), sqrt(-D)/(2*a))
end

x0 = -b/(2*a);
x = x0 - 5:0.1: x0+5;
y = a*x.^2 + b*x + c;
plot(x,y)
grid on
xlabel('X')
ylabel('Y')
title('Kurva Kuadrat')





