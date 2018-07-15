function [admission]=eligible( v,q )
    A=[v q];
    admission= (v>88 && q>88 && (mean(A,2))>= 92);
    
        
        
%ELIGIBLE Summary of this function goes here
%   Detailed explanation goes here


end