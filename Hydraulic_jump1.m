clear, clc, clf

for y1= 0.2:0.0001:0.7
    b = 1.0;
    Q = 1.0;
    V1 = Q/(b*y1);
    Fr1 = V1 / sqrt(9.81 * y1);
    r = akarkuadrat1(1,1, -2*Fr1);
    y2 = r * y1;
    plot(y1, y2)
    hold on
end
xlabel('y1')
ylabel('y2')
grid on

