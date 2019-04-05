%Computational Methods Group Design Project
%Coded by: Nicholas Paul
%Group members: Anna Toner, Toni Peressini, Jade Dekker, John Basile
%For: Dr. Martha Dagnew. CEE 2219b
%April 1st 2019

%% Calculation of Concentration
time = 1:1:62; %declare array of time
pCO2(size(time)) = 1; %decalre array of pCO2 equation results of the same size as array of time
i = 1; %decalre the counter

while (i<=62) %populate the pCO2 array with computations at each different time value
    pCO2(i) = 0.012226.*((time(i) + 1957) -1975).^2 + 1.418542.*((time(i) + 1957) - 1975) + 342.38309;
    i= i+1;
end

%% Bisection Method
pH = 1:1:62; %declaring an array for pH, of the same size as time (because we need to have the same number of elements in order to have the correct number of computations)
array(size(pH)) = 1; %decalre array of to hold values for the function
i = 1; %reset the counter

while (i<=62)
    func =@(pH)  (1.7378e-14).*(pCO2(i)./(10.^-pH)) +  (1.741927e-24).*(pCO2(i)./(10.^-2.*pH)) + (10e-14).*(1./(10.^-pH)) - 10.^(-pH) -0.0003;
    array(i) = npaul5_Bisect_Function_2(func,1,14,0.001,1000);
    i= i+1;
end

%graph the function
subplot(3,3,1); %subplot with 3 rows, 2 columns. Place the below graph in the 1st position
plot(time + 1957,array);
grid on;
title('Bisection Method');
xlabel('time, [years]');
ylabel('pH');


%% False Position Method
pH = 0; %reset the array
array(size(pH)) = 1; %reset the array
i = 1; %reset the counter

while (i<=62)
    func =@(pH)  (1.7378e-14).*(pCO2(i)./(10.^-pH)) +  (1.741927e-24).*(pCO2(i)./(10.^-2.*pH)) + (10e-14).*(1./(10.^-pH)) - 10.^(-pH) -0.0003;
    array(i) = npaul5_False_Position(func,5,8,0.001,1000);
    i= i+1;
end

%graph the function
subplot(3,2,3); %subplot with 3 rows, 2 columns. Place the below graph in the 3rd position
plot(time + 1957,array);
grid on;
title('False Position Method');
xlabel('time, [years]');
ylabel('pH');

%% Secant Method
pH = 0; %reset the array
array(size(pH)) = 1; %reset the array
i = 1; %reset the counter

while (i<=62)
    func =@(pH)  (1.7378e-14).*(pCO2(i)./(10.^-pH)) +  (1.741927e-24).*(pCO2(i)./(10.^-2.*pH)) + (10e-14).*(1./(10.^-pH)) - 10.^(-pH) -0.0003;
    array(i) = Nicholas_Paul_Secant(func,5,8,0.001,1000);
    i= i+1;
end

%graph the function
subplot(3,2,5); %subplot with 3 rows, 2 columns. Place the below graph in the 5th position
plot(time + 1957,array);
grid on;
title('Secant Method');
xlabel('time, [years]');
ylabel('pH');