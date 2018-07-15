function n = palin_product(dig,lim)
n=0;
for i=lim-1:-1:1
    x=i;
    y=num2str(x);
    for k=10^dig-1:-1:10^(dig-1)
        for l=10^dig-1:-1:10^(dig-1)
            m=0;
            for j=1:length(y)
                if y(j)==y(end-j+1) && x==l*k 
                m=m+1;    
                end
            end
            if m==length(y)
                 n=x;
                 return;
            end                
        end
            
    end
end
end



