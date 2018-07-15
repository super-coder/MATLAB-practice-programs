function [ amag ] = accelerate( F1,F2,m )
    F=F1+F2;
    F3=sqrt(mpower(F(1,1),2)+mpower(F(2,1),2)+mpower(F(3,1),2));
    amag=F3/m;
%ACCELERATE Summary of this function goes here
%   Detailed explanation goes here


end