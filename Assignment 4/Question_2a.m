%Assignment 4, Question 2
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%Feburary 11th 2019

c = 0.02;
Ta = 20;
iter = 1;
T(iter) = 50;

for i = 2:2:100
    if(i>0)
        T(iter + 1) = T(iter) - c*(T(iter)-Ta)*2;
        iter = iter +1;
    end 
end 

plot(0:2:100,T)
xlabel('Time (min)')
ylabel('Temperature (degrees celsius)')
title('Temperature vs Time')