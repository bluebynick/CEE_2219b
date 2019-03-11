function [root,ea, iter] = Nicholas_Paul_Secant(func, xri, xriminus1, es, maxit)
%Nicholas_Paul_Secant computes the root of a function using the
%Newton-Raphson method
%
 
iter = 0;
while(1)
    
    xrn = xri - (func(xri)*(xri-xriminus1))/(func(xri)-func(xriminus1));
    iter = iter+ 1;
    
    if xrn ~=0
        ea = abs((xrn-xri)/xrn)*100;
    end
    
    if ea<=es || iter >=maxit
        break
    end
    
    xri = xrn;
    
end

root = xrn;

disp(root); 

end

