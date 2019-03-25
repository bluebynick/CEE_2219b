%Assignment 9, Question 1
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%March 25th 2019


%% Question 1a and 1b 

%Decalre initial variables
a = 0;
b=2;
es = 0.005;
maxit = 1000;

%Create Function
func =@(x) (exp(x).*sin(x))./(1+x.^2);

%Pass Function to the appropriate file to compute 
Nicholas_Paul_Romberg(func, a, b, es, maxit)

%% Question 2 

%Decalre initial variables
T = -100;
deltaT =0:300;
deltaH(1)=0;
 
%Create Function
func= @(T) (0.15+(1.75*10^-4).*T+(2.64*10^-7).*T.^2)*(1000);
 
for i=2:length(deltaT)
    deltaH(i)=integral(func,T,(T+ deltaT(i)));
end

%Plot Function
plot(deltaT,deltaH)
title('The heat required to induce a temperature change of a material')
xlabel('deltaH (cal)')
ylabel('deltaT (C)')


