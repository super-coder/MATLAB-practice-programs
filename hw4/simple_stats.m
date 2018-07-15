function [ S ] = simple_stats( N )
    [a b]=size(N);
    S=[1];
    S(1:a,1)=mean(N,2);
    S(1:a,2)=median(N,2);
    S(1:a,3)=min(N,[],2);
    S(1:a,4)=max(N,[],2);



end