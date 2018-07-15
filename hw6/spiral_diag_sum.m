function [ diag_sum ] = spiral_diag_sum( n )
    c=0;
    if mod(n,2)==0
        n=n+1;
        c=1;
    end
    X=zeros(n);
    for j=1:(n+1)/2
    X(j,end-(j-1):-1:j)=(n-2*(j-1))^2:-1:(n-2*(j-1))^2-(n-2*(j-1))+1;
    X(j+1:end-(j-1),j)=(n-2*(j-1))^2-(n-2*(j-1)):-1:(n-2*(j-1))^2-2*(n-2*(j-1))+2;
    X(end-(j-1),end-(j-1):-1:j+1)=(n-2*(j-1))^2-3*(n-2*(j-1))+3:(n-2*(j-1))^2-2*(n-2*(j-1))+1;
    X(end-j:-1:j+1,end-(j-1))=(n-2*(j-1))^2-3*(n-2*(j-1))+2:-1:(n-2*(j-1))^2-4*(n-2*(j-1))+5;
    end
    if c==1
        X(:,1)=[];
        X(1,:)=[];
    end
    Y=diag(X);
    Z=diag(X(:,end:-1:1));
    diag_sum=sum(sum(Y,1),2)+sum(sum(Z,1),2)-1;
end