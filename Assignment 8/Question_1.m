%Assignment 8, Question 1
%Coded by: Nicholas Paul
%For: Dr. Martha Dagnew. CEE 2219b
%March 18th 2019

%% Question 1 a. 

%Decalre initial variables
height = 30;
n = 6;

%Create Function
func =@(elevation) 200*(elevation / (5+ elevation))*exp((-2*elevation)/height);

%Pass Function to the appropriate file to compute 
disp(Nicholas_Paul_TrapzFunc(func,0,height,n));

%% Question 1 b. 

%Decalre initial variables
height = 30;
n = 6;

%Create Function
func =@(elevation) 200*(elevation / (5+ elevation))*exp((-2*elevation)/height);

%Pass Function to the appropriate file to compute 
disp(Nicholas_Paul_SimpsonOneThirdFunc(func,0,height,n));