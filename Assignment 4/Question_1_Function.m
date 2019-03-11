function [WCF] = Question_1_Function(temperature,minVelocity,maxVelocity)



t = temperature;
minV = minVelocity;
maxV = maxVelocity;
fprintf('---------------------------------------------\n');
fprintf('    Wind Speed      Wind Chill Factor\n');
for i=minV:5:maxV
    WCF = 35.7 + 0.6*t - 35.7*(i^0.16) + 0.43*t*(i^0.16); 
    fprintf('     %5d                %0.2f',i, WCF);
    fprintf('\n');
    WCF = 0;
    
end
fprintf('---------------------------------------------\n');
fprintf('Thank you for using Nicks Wind Chill Calculator!\n');
fprintf('\n');

end

