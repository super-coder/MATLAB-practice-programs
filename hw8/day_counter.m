function n=day_counter(year)
x=[31 28 31 30 31 30 31 31 30 31 30 31];
day=0;
for i=1776:year
    n=0;
    for j=1:length(x)
        if j==3
           if rem(i,400)==0
              day=day+1;
           end
           if rem(i,4)==0 && rem(i,100)~=0 
              day=day+1;
           end
        end
        
        if rem(day+1,7)==1
            n=n+1;
        end
        day=day+x(j);
    end
end
end