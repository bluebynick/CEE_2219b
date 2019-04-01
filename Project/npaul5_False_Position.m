function [root,fx,ea,iter]=npaul5_False_Position(func, xl, xu, es, maxit)

test=func(xl)*func(xu);

if test>0, error ('no sign change'); 
end

iter=0; xr=xl; ea=100; % initial conditions

while(1)
    xrold=xr;
    xr=(xu*func(xl) - xl*func(xu))/(func(xl) -func(xu));
    iter=iter+1;
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
    
    if ea<=es || iter>=maxit, break, end
end

root=xr;

fx=func(xr);



