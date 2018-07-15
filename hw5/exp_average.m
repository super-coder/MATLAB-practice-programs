function [ out ] = exp_average( in, b )
    persistent outn d;
    if nargin == 2
        d=b;
        outn=in;
    elseif nargin==1
        if isempty(d)
            d=0.1;
        end
        if isempty(outn)
            outn=in;
        else
        outn=d*in + (1-d)*outn;
        end
    end
    
    out=outn;
    


end