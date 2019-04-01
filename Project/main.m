%Computational Methods Group Design Project
%Coded by: Nicholas Paul
%Group members: Anna Toner, Toni Peressini, Jade Dekker, John Basile
%For: Dr. Martha Dagnew. CEE 2219b
%April 1st 2019


time = 1:1:61; %declare array of time
pCO2(size(time)) = 1; %decalre array of pCO2 equation results of the same size as array of time
i = 1; %decalre the counter

while (i<62) %populate the pCO2 array with computations at each different time value
    pCO2(i) = 0.012226.*((time(i) + 1958) -1975).^2 + 1.418542.*((time(i) + 1958) - 1975) + 342.38309;
    i= i+1;
end


pH = 1:1:61; %declaring an array for pH, of the same size as time (because we need to have the same number of elements in order to have the correct number of computations)
%f(size(time)) = 1; %decalre array of to hold values for the function
i = 1; %reset the counter

f =@(pH)  (1.7378e-14).*(pCO2(i)./(10.^-pH(i))) +  (1.741927e-24).*(pCO2(i)./(10.^-2.*pH(i))) + (10e-14).*(1./(10.^-pH(i))) - 10.^(-pH(i)) -0.0003;
   

npaul5_Bisect_Function(f,0,1,0.001,1000)


%plot(f,time);
% grid on;
% xlabel('f(h), [m^3]');
% ylabel('h, [m^3]');
% 
% func =@(height) pi*(height^2)*(3*4-height)/3 -60;
% 
% %[root,fx,ea,iter]=npaul5_Bisect_Function(func,0,4,0.001,1000)