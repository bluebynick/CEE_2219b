% MatLab Assignment 2, Part 1
% Coded by: Nicholas Paul (250949057)
% Dr. Martha Dagnew
% January 28th 2019

clear 
clc

%define variables
a = 3;
b = 5;
x = 0: (pi/60): (pi/2);

%compute values of y
y = b*exp(-a*x).*sin(-b*(x.^2)).*(0.015*(x.^4) - 0.135*(x.^3) + 0.075*(x.^2) + 2.5*(x));

%compute z = y^2
z = y.^2;

%create 2D plot
%figure(1);
subplot(2,1,1); %2 graphs on one page. This graph being in the second column, and the second row 
plot(x,y);
grid on;
hold on;  %this is putting the two in the same graph
title('2D plot');
xlabel('x-axis');
ylabel('y-axis');
plot(x,z);
hold on; %this is putting the two in the same graph
legend('y values', 'z values');

%create 3D plot
%figure(2);
subplot(2,1,2); %2 graphs on one page. This graph being in the first column, and the second row
plot3(x,y,z);
grid on;
title('3D plot');
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');

%call function file
Assignment2_Part2(3,5,(0: (pi/10): (pi/2))');

