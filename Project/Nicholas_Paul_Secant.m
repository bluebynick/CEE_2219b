function [root] = Nicholas_Paul_Secant(func, xri, xriminus1, es, maxit)
%Nicholas_Paul_Secant computes the root of a function using the Secant
%method 

% initial conditions
rootPerStep(size(maxit)) = 0;
iter(size(maxit)) = 0; %declare array to hold values of iterations with a size of maxit. assign all values as 1; 

i = 1; % declare counter

while(i<=maxit)
    
    xrn = xri - (func(xri)*(xri-xriminus1))/(func(xri)-func(xriminus1));
    
    
    if xrn ~=0
        ea = abs((xrn-xri)/xrn)*100;
    end
    
    %populate array in order to plot it
    iter(i) = i;
    rootPerStep(i) = xrn;
    
    %increase counter
    i = i+1;
    
    %test to see if error is acceptable and then exit the loop
    
    if ea<=es
        break
    end
    
    xri = xrn;
    
end

%graph the function
subplot(3,2,6); %subplot with 3 rows, 2 columns. Place the below graph in the 2nd position
plot(iter,rootPerStep);
grid on;
xlabel('number of iteration');
ylabel('pH');

root = xrn;

end

