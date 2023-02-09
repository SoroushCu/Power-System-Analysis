clc
clear all
t=0:0.0001:0.01;
f=@(t)900*cos(100*pi.*t + (pi)/6).*(cos(100*pi.*t + (pi)/2));
g=@(t)60*cos(100*pi.*t + (pi)/2);
h=@(t)15*cos(100*pi.*t + (pi)/6);
plot(t,f(t))
