function [ p ] = zero_stat( x )
    [a b]=size(x);
    p1=sum(x,1);
    p2=a*ones(1,b);
    p3=p2-p1;
    p=sum(p3)/a/b*100;

end