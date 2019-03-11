%Assignment 5, Question 1a
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%March 11th 2019

%% Question 3. a)
tic
height = 0:0.1:4; %decalre array of heights
func =@(height) pi*(height^2)*(3*4-height)/3 -60;
dfunc =@(height) -pi*(height-8)*height;

[root,ea,iter]=Nicholas_Paul_Newtraph(func, dfunc, 3.5, 0.05, 100);
toc

%% Question 3. b)
tic
height = 0:0.1:4; %decalre array of heights
func =@(height) pi*(height^2)*(3*4-height)/3 -60;

[root,ea,iter]=Nicholas_Paul_Secant(func, 3.5, 0, 0.05, 100);
toc

%% Question 3. c)
%Upon using the NR method, the "tic toc" outputted "Elapsed time is 
%0.003115 seconds" and the secant method outputted "Elapsed time is 
%0.001601 seconds". Therefore, because the Secant method took less time, it
%can be said that the Secant method has a FASTER speed of convergence than
%the NR method for this problem.