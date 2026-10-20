clc, clear

T = 8; 
d = 10; 
g = 9.81;

w = 2*pi/T; 

L = 20; 

for ii =1:100
    Li = L;
    L = g * 2*pi * tanh(2*pi*d/L)/w^2
    if abs(L-Li)<= 0.01
        break
    end
end

