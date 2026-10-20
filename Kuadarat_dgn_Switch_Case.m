clc, clear

a = 1; b = 2; c = 3;

d = b^2 - 4*a*c

switch sign(d)
    case 1 
        disp('akar real')
        x1 = (-b + sqrt(d))/(2*a);
        x2 = (-b - sqrt(d))/(2*a);
        fprintf('x1 = %4.2f, x2 = %4.2f \n', x1, x2)
    case 0 
        disp('akar kembar')
        x = -b/ (2*a);
        fprintf('x = %4.2f \n', x)
    case -1 
        disp('akar kompleks')
        real = -b/(2*a);
        imag = sqrt(-d)/(2*a);
        fprintf('x1 = %4.2f + %4.2f i \n', real, imag)
        fprintf('x2 = %4.2f - %4.2f i \n', real, imag)
        
end