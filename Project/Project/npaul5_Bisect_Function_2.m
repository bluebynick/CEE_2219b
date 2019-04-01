function [root]=npaul5_Bisect_Function_2(func, xl, xu, es, maxit)
test=func(xl)*func(xu);

if test>0, error ('no sign change'); 
end

% initial conditions
rootPerStep(size(maxit)) = 0;
iter(size(maxit)) = 0; %declare array to hold values of iterations with a size of maxit. assign all values as 1; 
xr=xl; 
ea = 100;

i = 1; % declare counter

while(i<=maxit)
    xrold=xr;
    
    xr=(xl+xu)/2;
    
    if xr~=0
        ea=abs((xr-xrold)/xr*100);
        test=func(xl)*func(xr);
        
    end
    
    if test<0
        xu=xr;
        
    elseif test>0
        xl=xr;
        
    else
        ea=0;
    end
    
    iter(i) = i;
    rootPerStep(i) = xr;
    
    i = i+1;
    
    if ea<=es, break, end
    
end

subplot(1,2,2);
plot(iter,rootPerStep, '-');
grid on;
xlabel('number of iteration');
ylabel('pH');

root = xr;