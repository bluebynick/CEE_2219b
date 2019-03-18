function Integral = Nicholas_Paul_SimpsonOneThirdFunc(func,a,b,n)
%Nicholas_Paul_TrapzFunc - The Simpson's 1/3 Rule
%   This is a function that uses the Simpson's 1/3 rule to compute the
%   numerical antiderivateive of an inputted function

%calculating the integral
x= a;
h= (b-a)/n;
f= func(a);

for i=1:2: n-1
    x= x+h;
    f= f+4*func(x);
end

for j= 2:2:n-2
    x = x+h;
    f = f+2*func(x);
end 

f= f+func(b);
Integral= (h/3)*f;
end 

