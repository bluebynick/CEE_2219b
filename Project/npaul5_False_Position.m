function [root]=npaul5_False_Position(func, xl, xu, es, maxit)

%test to ensure sign change (necessary for computation to continue)
test=func(xl)*func(xu);
if test>0, error ('no sign change'); 
end

%initial conditions
rootPerStep(size(maxit)) = 0;
iter(size(maxit)) = 0; %declare array to hold values of iterations with a size of maxit. assign all values as 1; 
xr=xl; 
ea = 100;

i = 1; % declare counter

while(i<=maxit)
    
    %solve for xr
    xrold=xr;
    xr=(xu*func(xl) - xl*func(xu))/(func(xl) -func(xu));
    
    %calculate approximate error
    if xr~=0
        ea=abs((xr-xrold)/xr*100);
        test=func(xl)*func(xr);
    end
    
    %change value of xu or xl based on sign of func(xl)*func(xr)
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0;
    end
    
    %populate array in order to plot it
    iter(i) = i;
    rootPerStep(i) = xr;
    
    %increase counter
    i = i+1;
    
    %test to see if error is acceptable and then exit the loop
    if ea<=es
        break
    end
    
    
end

%graph the function
subplot(3,2,4); %subplot with 3 rows, 2 columns. Place the below graph in the 1st position
plot(iter,rootPerStep);
grid on;
xlabel('number of iteration');
ylabel('pH');

root = xr;



