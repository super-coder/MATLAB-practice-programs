function [ ek, k ] = approximate_e( delta )
    i=1;
    ek=1;
    T=1;
    j=1;
    while delta<=abs(ek-exp(1))
        while i<=j
          T=1/i*T;
          k=i;
          i=i+1;
        end
        j=j+1;
        ek=ek+T;
    end


end