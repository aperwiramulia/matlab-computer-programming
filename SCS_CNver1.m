clc, clear

CN = 75;
P = 60; %Curah hujan dalam mm
A = 10*1e06;%Dalam m^2
Tc = 6 * 3600;
S = 25400/CN - 254 %S = Macimum retention in mm

Ia = 0.2 * S %Initial abstraction


Q = (P - Ia)^2 / (P - Ia + S) %Runoff depth

Qm = Q * 1e-03

V = Qm * A % Volume in m^3

Qp = V/Tc  %Debit puncak dalam m3/s





