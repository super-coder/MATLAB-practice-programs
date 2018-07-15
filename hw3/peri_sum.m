function [ s ] = peri_sum( A )
       a1=A(:,1);
       a2=A(1,:);
       a3=A(:,end);
       a4=A(end,:);
       s=sum(a1,1)+sum(a2,2)+sum(a3,1)+sum(a4,2)-A(1,1)-A(1,end)-A(end,1)-A(end,end);
   
%PERI_SUM Summary of this function goes here
%   Detailed explanation goes here


end