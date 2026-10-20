Ho = 3; 
T = 8;
Ao = 30. 
g = 9.81;
h2 = 2;

Co = g*T/(2*pi)
sinA2 = sqrt(g*h2)/Co * sind(alfao);

A2 = asind(sinA2)

kr = sqrt(cosd(Ao)/cosd(A2))

ks = sqrt(0.5*Co/sqrt(g*h2))

H2 = Ho * kr * ks

