clc, clear;

d = 0.15; %diameter in m
rw = d/2; 
re = 10;   % in m
Aw = pi*d^2/4 %in m2

data = [0 0; 1 100.9; 2 170.2; 3 179.6; 4 183.1; 5 185.2; 6 186.4]
t = data(:,1)
z = data(:,2)
z0 = 186.4 *ones(1,7)'

Q(1) = 0;
for ii =1:6
    Q(ii+1) = Aw * ((z(ii +1)-z(ii))/100)/((t(ii +1)-t(ii))*3600)  %in m3/s
end

Qltr = Q * 1000 % in ltr/s
Qltrhr = Qltr * 3600

dV = 186.4/100 * Aw  %in m3
Qltr_rata = dV / (6 * 3600) % in m3/s
Qltr_rata_ins = dV * 1000/6  %in ltr/hr

y = (z0 - z)/100

lny = log(y)

c = 1.03 / 3600  %ins-1

T=Aw*log(re/rw)*c/(2*pi)  %in m^2/s

Q = 2* pi * T * y /log(re/rw)

yy = lny; 
tt = t(1:6,:)
yy = yy(1:6,:)
p = polyfit(tt, yy, 1);

a = p(1)  % slope, meter/hour
b = p(2)   % intercept, meter



