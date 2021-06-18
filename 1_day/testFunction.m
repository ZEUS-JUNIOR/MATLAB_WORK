function testFunction
a = 2;
b= 3;

c = add(a,b);
d = mul(a,b);

function [ c ] = mul( a,b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
c =a * b;
disp(c)
return

function [ c ] = add( a,b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
c = a+b;
disp(c);
return
