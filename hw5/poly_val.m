function p = poly_val(c0,c,x)
     if isempty(c)
       p=c0;
   elseif isscalar(c)
       p=c0+c*x;
     else
         if isrow(c)
    [~,x1] = size(c);
    x2 = 1:x1;
    p = c0 + sum((c.*x.^x2),2);
         else 
             [x1,~]=size(c);
             x2=zeros(x1,1);
              x2(1:x1)=1:x1;
              p = c0 + sum((c.*x.^x2),1);
         end
             
         
    end
end
