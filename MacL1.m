clc;
clear;
close all;

% Example synthetic data
Rainfall = [50; 75; 100; 125; 150; 175; 200];
FloodDepth = [8; 12; 18; 23; 29; 33; 41];

% Create a table
data = table(Rainfall, FloodDepth);

% Fit linear regression model
mdl = fitlm(data, 'FloodDepth ~ Rainfall');

% Display regression results
disp(mdl);

% Plot observations and fitted regression
figure;
plot(mdl);
xlabel('Rainfall (mm)');
ylabel('Flood depth (cm)');
title('Example: Rainfall vs Flood Depth');
grid on;
