function [ a,b ] = sindeg( deg)
    [n,m]=size(deg);
    x=pi/180.*deg;
    a=sin(x);
    b=sum(sum(a,1),2)/n/m;
end