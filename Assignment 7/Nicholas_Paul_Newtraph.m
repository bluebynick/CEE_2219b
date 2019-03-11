function [root,ea, iter] = Nicholas_Paul_Newtraph(func, dfunc, xrold, es, maxit)
%Nicholas_Paul_Newtraph computes the root of a function using the
%Newton-Raphson method
%

iter = 0;
while(1)
    xrn = xrold - (func(xrold)/dfunc(xrold));
    iter = iter+ 1;
    
    if xrn ~=0
        ea = abs((xrn-xrold)/xrn)*100;
    end
    
    if ea<=es || iter >=maxit
        break
    end
    
    xrold = xrn;
    
end

root = xrn;

disp(root); 

end

