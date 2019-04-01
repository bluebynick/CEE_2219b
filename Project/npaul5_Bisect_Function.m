function [root,fx,ea,iter]=Bisect(func, xl, xu, es, maxit)
test=func(xl)*func(xu);
if test>0, error ('no sign change'); end
iter=0; xr=xl; ea=100; % initial conditions
while(1)
xrold=xr;
xr=(xl+xu)/2;
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

