function X = gaussNaiveFunction(A,b)
%GAUSSNAIVEFUNCTION is a function that uses Gauss Naive Elimination to
%solve the linear system inputted
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%Feburary 25th 2019

[m,n] = size(A);

if m~=n
    error('Matrix must be square');
end

nb = n+1;
newMatrix = [A b];

%forward elimination
for k = 1:n-1
    for i = k +1:n
        factor = newMatrix(i, k)/newMatrix(k, k);
        newMatrix(i,k:nb) = newMatrix(i,k:nb)-factor*newMatrix(k,k:nb);
    end
end

%back substitution
X = zeros(n,1);

X(n) = newMatrix(n, nb)/newMatrix(n,n);
for i = n-1:-1:1
    X(i) = (newMatrix(i, nb) - newMatrix(i, i+1:n)*X(i+1:n)) / newMatrix(i, i);
end
end 


