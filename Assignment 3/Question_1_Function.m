function [x,y,r,angle] = Question_1_Function(x,y)
%Assignment 3, Question 1
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%Feburary 4th 2019


if(x<0)
    
    if(y>0)
      
        theta = atan(y/x) + pi;
    
    elseif (y<0)
    
        theta = atan(y/x) - pi;
    
    else %condition where y=0
        
        theta = pi;
        
    end  

elseif(x==0)
    if(y>0)
      
        theta = pi/2;
    
    elseif (y<0)
    
        theta = -pi/2;
    
    else %condition where y=0
        
        theta = 0;
        
    end 

else
    theta = atan(y/x); 
    
end
    

r = sqrt(x^2 + y^2);
angle = theta*(180/pi);

fprintf('%5d     %5d     %0.2f     %0.2f\n',x,y,r,angle);

end

