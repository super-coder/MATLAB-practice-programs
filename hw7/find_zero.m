function x=find_zero(f,x1,x2)
    x=(x1+x2)/2;
    while abs(f(x))>1e-10
        if (f(x)<0 && f(x2)>0) || (f(x)>0 && f(x2)<0)
            x1=x;
            x=(x+x2)/2;
        elseif (f(x)<0 && f(x1)>0) || (f(x)>0 && f(x1)<0)
           x2=x;
           x=(x+x1)/2;
        end   
    end
end