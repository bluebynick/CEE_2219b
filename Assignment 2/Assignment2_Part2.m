function output = Assignment2_Part2(inputArg1,inputArg2, inputArg3)
%Table Function - This is a function that takes in values and outputs a
%computation of those values in a table
%Coded by: Nicholas Paul (250949057)
%Janurary 28th 2019

%getter variables
a = inputArg1;
b = inputArg2;
x = inputArg3; 

%compute values of y
y = b*exp(-a*x).*sin(-b*(x.^2)).*(0.015*(x.^4) - 0.135*(x.^3) + 0.075*(x.^2) + 2.5*(x));

%compute z = y^2
z = y.^2;

%display table
table(x,y,z)

end

