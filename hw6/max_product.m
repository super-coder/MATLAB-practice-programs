function [product , ind] = max_product(v,n)
   f=1;
   t=[];
   if iscolumn(v)==1
       v=v';
   end
    if size(v,2)<n
        product=0;
        ind=-1;
        return
    end
    for i=1:size(v,2)-n+1
        for s=1:n
            f=f*v(i+s-1);
        end
        t=[t f];
        f=1;
    end
        product=max(t);
        for j=size(v,2)-n+1:-1:1
            if product==t(j)
                ind=j;
            end
        end
end