function [ orms ] = odd_rms( nn )
    a=1:2:2*nn-1;
    a1=a.^2;
    a2=mean(a1,2);
    orms=sqrt(a2);



end