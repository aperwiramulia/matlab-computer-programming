clear, clc

T = 8; %Periode
h = 10; %Kedalaman
H = 1.5; %Tinggi gelombang
g = 9.81; %Percepatan gravitasi

tau2 = (2*pi/T)^2
k = 2*pi/20
kn = 1.00
ii = 0;
rho = 1035; %kg/m^3

while abs(k-kn)>0.0001
    kn = k
    k = tau2 / (g*tanh(k * h))
    ii = ii + 1
end

L = 2*pi/ k % m
C = L/T     % m/dtk  

n = 0.5*(1 + 2*k*h/sinh(2*k*h))
Cg = n * C % wave group velocity in m/dtk
E = 1/8 * rho * g * H^2 %wave energy in joule/m^2
P = E * Cg %wave energy flux in watt/m






