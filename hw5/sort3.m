function [ x1,x2,x3 ] = sort3( x )
    if x(1) <= x(2) && x(1) <= x(3)
        x1=x(1);
        if x(2)<= x(3)
            x2=x(2);
            x3=x(3);
        else
            x2=x(3);
            x3=x(2);
            
        end
    elseif x(2)<= x(1) && x(2) <= x(3)
        x1 = x(2);
        if x(1) <= x(3)
            x2=x(1);
            x3=x(3);
        else
            x2=x(3);
            x3=x(1);
        end
    elseif x(3) <= x(1) && x(3) <= x(2)
        x1=x(3);
        if x(1)<=x(2)
            x2=x(1);
            x3=x(2);
        else
            x2=x(2);
            x3=x(1);
        end
        
end