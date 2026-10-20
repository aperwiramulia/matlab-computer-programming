clc, clear

a = 1; b = 2; c = 3; 

d = b^2 - 4 *a*c

x = sign(d)

switch x
    case 1
        disp('Akar Real Berbeda')
        x1 = (-b + sqrt(d))/(2*a);
        x2 = (-b - sqrt(d))/(2*a);
        fprintf('x1 = %5.3f dan x2 =%5.3f \n', x1, x2) 
    case 0
        disp('Akar Real Kembar')
        x1 = -b/(2*a);
        fprintf('x1 = x2 = %5.3f \n', x1) 
    case -1 
        disp('Akar Kompleks')
        real = -b/(2*a);
        imag = sqrt(-d)/(2*a);
        fprintf('x1 = %5.3f + %5.3fi \n', real, imag) 
        fprintf('x2 = %5.3f - %5.3fi \n', real, imag) 
end