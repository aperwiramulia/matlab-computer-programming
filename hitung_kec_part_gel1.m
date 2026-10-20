clc

T = 8; 
tau = 2*pi/T;

L = 57.5; k = 2*pi/L;

h = 6; 
H = 1.5; 
g = 9.81;
z = -h; 

u = g*H*k/ (2*tau) * cosh(k*(h + z)) / cosh(k*h)
w = H*tau/2 * sinh(k*(h+z)) / sinh(k*h)