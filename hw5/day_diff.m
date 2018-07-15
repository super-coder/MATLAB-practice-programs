function [ dd ] = day_diff( month1, day1, month2, day2 )
    x=[0 31 59 90 120 151 181 212 243 273 304 334 365];
    dd=-1;
    if ~isscalar(month1) || month1 > 12 || month1 < 1 || month1~=fix(month1)
        return
    end
    if ~isscalar(month2) ||month2 > 12 || month2 < 1 || month2~=fix(month2)
        return
    end
    if ~isscalar(day1) || day1~=fix(day1) || day1<1
        return
    end
    
    if ~isscalar(day2) || day2~=fix(day2) || day2<1
        return
    end
    
     days1=x(month1);
      days1=days1+day1;
    if days1>x(month1+1)
        return
    end
        
   
    days2=x(month2);
     days2=days2+day2;
    if days2>x(month2+1)
        return
    end
        
   
    
    dd= abs(days1-days2);
end