clear, clc, clf

for y1= 0.2:0.01:0.7
    b = 1.0;
    Q = 1.0;
    V1 = Q/(b*y1);
    Fr1 = V1 / sqrt(9.81 * y1);
    
    r = akarkuadrat1(1,1, -2*Fr1);
    y2 = r * y1;
    V2 = Q/(b*y2);
    Fr2 = V2 / sqrt(9.81 * y2);
    
    plot(y1, y2, 'k*')
    hold on
    plot(y1, Fr2, 'ro')
   
end
xlabel('y1')
ylabel('y2 or Fr2')
legend('y2 dalam m','Fr2')