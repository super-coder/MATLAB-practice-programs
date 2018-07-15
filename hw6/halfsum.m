function [ s ] = halfsum( A )
    A=A(:,end:-1:1)
    [a,b]=size(A)
    c=tril(A,-(a-b))
    s=sum(sum(c,2),1);
end