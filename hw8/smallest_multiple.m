function [w] = smallest_multiple(n)
w=uint64(1);
    for i=1:n
        w=w*(i/gcd(w,i));
    end
    if w == intmax('uint64')
        w=uint64(0);
    end
end

