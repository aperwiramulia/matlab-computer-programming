clear, clc, clf
ii(1) = 0;

for y= 0.2:0.01:0.7
    ii = ii+1;
    y1(ii) = y;
    b = 1.0;
    Q = 1.0;
    V1 = Q/(b*y);
    Fr = V1 / sqrt(9.81 * y);
    Fr1(ii) = Fr;
    
    r = akarkuadrat1(1,1, -2*Fr);
    yy2 = r * y;
    y2(ii) = yy2;
    V2 = Q/(b*yy2);
    Fr = V2 / sqrt(9.81 * yy2);
    Fr2(ii) = Fr;
    
    %plot(y1, y2, 'k*')
    %hold on
    %plot(y1, Fr2, 'ro')
   
end
[ax, h1, h2] = plotyy(y1, y2, y1, Fr2);
ylabel(ax(1), 'kedalaman hiir y2(m)')
ylabel(ax(2), 'Froude number hilir Fr2')


xlabel('kedalam hulu y1(m)')
legend([h1 h2],{'y2(m)','Fr2'})
grid on
set(ax,'YMinorGrid','on')
set(ax,'XMinorGrid','on')

