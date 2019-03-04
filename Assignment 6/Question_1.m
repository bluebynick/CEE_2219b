%Assignment 6, Question 1
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%March 4th 2019

height = 0:0.1:4; %decalre array of heights
f(size(height)) = 1; %decalre array of f(h)
i = 1; %decalre the counter

while (i<=41)
    f(i) = pi*(height(i)^2)*(3*4-height(i))/3 -60;
    i= i+1;
end

plot(height,f);
grid on;
xlabel('f(h), [m^3]');
ylabel('h, [m^3]');

func =@(height) pi*(height^2)*(3*4-height)/3 -60;

%[root,fx,ea,iter]=npaul5_Bisect_Function(func,0,4,0.001,1000)

%[root,fx,ea,iter]=npaul5_False_Position(func,0,4,0.001,1000)

%With Bisect_Function, there were 18 iterations
%With False_Position, there were 7 iterations
%Therefore, the False_Position method is the fastest