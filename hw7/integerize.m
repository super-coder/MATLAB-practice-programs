function [A] = integerize(x)
  x=(x(:))';  
    for i=1:size(x,2)
        if rem(x(i),1)~=0
            A='NONE';
            return
        end
    end    
    u=max(abs(x));
    if -1*u==min(x)
        u=u-1;
    end
        if u<= 2^7-1
                A=class(int8(u));
        elseif u<=2^15 - 1
                A=class(int16(u));  
        elseif u<=2^31-1
                A=class(int32(u));
        elseif u<=2^63-1
                A=class(int64(u));
        else
            A='NONE';
        end         
end

