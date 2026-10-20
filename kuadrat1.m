clear, clc, clf %Menghapus memori, layar, grafik

%Memasukkan nilai a, b, dan c
a = input('a = ');
b = input('b = ');
c = input('c = ');

d = b^2 - 4*a*c; %Mengitung nilai d

%Menghitung nilai akar persamaan kuadarat
x1 = (-b + sqrt(d))/ (2*a);
x2 = (-b - sqrt(d))/ (2*a);

%Menghitung titik ekstrim
xe = -b / (2*a);
ye = a*xe^2 + b*xe +c;

if a > 0 
    eks = 'minimum';
else
    eks = 'maksimum';
end

%Cetak nilai akar
if d >= 0
    %Akar riil
    fprintf('Akar persamaan x1 = %5.3f \n', x1)
    fprintf('Akar persamaan x2 = %5.3f \n', x2)
    y1 = 0; y2 = 0;
else
    %Akar kompleks
    fprintf('Akar persamaan x1 = %5.2f + %5.2f i \n', -b/(2*a), sqrt(-d)/(2*a))
    fprintf('Akar persamaan x1 = %5.2f - %5.2f i \n', -b/(2*a), sqrt(-d)/(2*a))
end

%Cetak titik ekstrim
fprintf('Titik ekstrim %s di xe = %5.2f, ye = %5.2f \n', eks, xe, ye)

%Plot persamaan kuadratnya
fplot(@(x) a*x.^2 + b*x + c, [-4 3])
grid on
hold on
plot(xe, ye, 'ro') 
plot(x1, y1, 'bo')
plot(x2, y2, 'bo')
xlabel(' X ')
ylabel(' Y ')
legend('kurva kuadrat', 'ttk ekstrim', 'ttk akar')
st = ['y = ' num2str(a) 'x^2 + ' num2str(b) 'x + ' num2str(c) ];
title(st)
    

