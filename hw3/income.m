function [ x ] = income( rate, price )
    F=rate.*price*96;
    x=sum(F,2);
%INCOME Summary of this function goes here
%   Detailed explanation goes here


end