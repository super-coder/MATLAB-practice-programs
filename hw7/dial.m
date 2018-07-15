function x=dial(str)

  
phone=char;
for i=1:length(str)
    if str(i)=='2' || str(i)=='A' || str(i)=='B' || str(i) == 'C'
        phone(i)='2';
    elseif str(i)=='3' || str(i)=='D' || str(i) == 'E' || str(i) == 'F'
        phone(i)='3';
    elseif str(i) =='4' || str(i)=='G' || str(i) == 'H' || str(i) == 'I'
        phone(i)='4';
    elseif str(i) == '5' || str(i)== 'J' || str(i) == 'K' || str(i) == 'L'
        phone(i)='5';
    elseif str(i) == '6' || str(i) =='M' || str(i) == 'N' || str(i) == 'O'
        phone(i) = '6';
    elseif str(i) == '7' || str(i) == 'P' || ...
            str(i) == 'Q' || str(i) == 'R' || str(i) == 'S'
        phone(i) = '7';
    elseif str(i) == '8' || str(i) == 'T' || str(i) == 'U' || str(i) == 'V'
        phone(i) = '8';
    elseif str(i) == '9' || str(i) == 'W' || str(i) == 'X' ||...
            str(i) == 'Y' || str(i) == 'Z'
        phone(i)='9';
    elseif str(i) == '1'
        phone(i) = '1' ;
    elseif str(i) =='0'
        phone(i) = '0';
    else
        x=uint64(0);
        return;

    end
    x=uint64(str2num(phone));
end
    
    
end

