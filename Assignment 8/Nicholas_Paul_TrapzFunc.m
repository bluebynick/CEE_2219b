function Integral = Nicholas_Paul_TrapzFunc(func,a,b,n)
%Nicholas_Paul_TrapzFunc - The Trapezoidal Rule
%   This is a function that uses the trapezoidal rule to compute the
%   numerical antiderivateive of an inputted function

%calculating the integral
x= a;
h= (b-a)/n;
f= func(a);

for i=1: n-1
    x= x+h;
    f= f+2*func(x);
end

f= f+func(b);
Integral= h*f/2;
end 

