function X = gaussPivoting(A,B)
%GAUSSPIVOTING is a function that uses Gauss elimination with partial pivoting 
%to solve the linear system inputted
[m, n] = size(A);

if m~=n
    error('Matrix must be square');
end

nb = n+1;
newMatrix = [A B];

% partial pivoting. Question 1d. 
for k=1:n-1
    
    [y,i]=max(abs(newMatrix(k:n,k)));
    ipr=i+k-1;
    if ipr ~=k %this is an if condition that (for each element) checks if the element is equal to zero by referencing with the variable that was created above
        newMatrix([k,ipr],:)=newMatrix([ipr,k],:); %in order to avoid dividing by zero and creating round off errors, this adjusts the value of the element appropriately
    end
    
    
    for i = k+1:n
        factor = newMatrix(i, k)/newMatrix(k, k);
        newMatrix(i, k:nb) = newMatrix(i, k:nb) - factor*newMatrix(k, k:nb);
    end
end

X = zeros(n, 1);
X(n) = newMatrix(n, nb)/newMatrix(n,n);
for i = n-1:-1:1
    X(i) = (newMatrix(i, nb) - newMatrix(i, i+1:n)*X(i+1:n))/newMatrix(i,i);
end 
end

