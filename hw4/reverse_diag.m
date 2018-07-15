function [ x ] = reverse_diag( n )
    x=zeros(n);
    x(n:n-1:n*n-1)=1;



end