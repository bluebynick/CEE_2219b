% MatLab Assignment 1, Part 1
% Coded by: Nicholas Paul (250949057)
% Dr. Martha Dagnew
% January 31st 2019

D = 50:50:500;
n = 0.012;
S = 0.015;

A = (pi*(D.^2))/4;

P = pi.*D;

R = A./P;

V = (1/n) * (R.^(2/3) .* S^(1/2)); 

Q = A.*V;

plot(D,Q);
xlabel('pipe diameter (m)');
ylabel('flow (m3/s)');
title('Pipe flow calculation using Mannings equation');
legend("flow");
grid on;

