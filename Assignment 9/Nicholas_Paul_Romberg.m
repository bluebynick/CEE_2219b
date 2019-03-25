
function I = Nicholas_Paul_Romberg(func, a, b, es, maxit)
% Input: func = name of function to be integrated;

iter = 0;

n = 1; % n = number of segments

I(1,1) = Nicholas_Paul_TrapzFunc(func, a, b ,n);

fprintf('%6s %6s %7s\n', 'Integral', 'iter', 'ea');

while iter < maxit
    iter = iter+1;
	n = 2^iter;
    I(iter+1, 1) = Nicholas_Paul_TrapzFunc(func, a, b , n);

    for k = 2:iter+1
        j = 2+iter-k;
        I(j,k) =(4^(k-1).*I(j+1, k-1)-I(j,k-1))./(4^(k-1)-1);
    end
    
    ea=abs((I(1,iter+1)-I(2,iter))/I(1,iter+1))*100;
    fprintf('%0.5f    %0.5f   %0.5f\n', I(j,k), iter, ea);
    if ea<=es,break; 
    end
end

I=I(j,k)
iter=iter
ea=ea
end
