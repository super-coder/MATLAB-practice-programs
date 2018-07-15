function [data ] = year2016( month )
    if ~isscalar(month) || month < 1 || month > 12 || floor(month)~=month
        data=[];
        return;
    end
    x=[31 29 31 30 31 30 31 31 30 31 30 31];
    y={'January' 'February' 'March' 'April' 'May' 'June'...
        'July' 'August' 'September' 'October' 'November' 'December'};
    days={'Thu' 'Fri' 'Sat' 'Sun' 'Mon' 'Tue' 'Wed' };
    start=0;
    start=start+sum(x(1:month-1));
    for i=1:x(month)    
    data(i).month=y{month};
    data(i).date=i;
    data(i).day=days{rem(start+i,7)+1};
    end

end