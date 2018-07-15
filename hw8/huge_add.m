function [n] = huge_add(a,b)
if ~ischar(a) || ~ischar(b)
    n = -1; 
    return;
end
for i=1:length(a)
    if ~(a(i)>='0' && a(i)<='9')
        n=-1;
        return;
    end
end
for i=1:length(b)
    if ~(b(i)>='0' && b(i)<='9')
        n=-1;
        return;
    end
end
if str2num(b)>str2num(a)
    temp=b;
    b=a;
    a=temp;
end
c=0;
n=num2str(zeros(1,length(a)+1));
n=n(n~=' ');
for i=1:length(b)
    if c + str2num(a(end-i+1)) + str2num(b(end-i+1)) <=9
       n(end-i+1)= num2str(c + str2num(a(end-i+1)) + str2num(b(end-i+1)));
       c=0;
    else
        x = c+str2num(a(end-i+1)) + str2num(b(end-i+1));
        n(end-i+1)=num2str(rem(x,10));
        c=floor(x/10);
    end
end
if length(a)>length(b)
    for i=1:length(a)-length(b)
        if c + str2num(a(end-length(b)-i+1))<=9
           n(end-length(b)-i+1)=num2str(c + str2num(a(end-length(b)-i+1)));
           c=0;
        else
            x=c+str2num(a(end-length(b)-i+1));
            n(end-length(b)-i+1)=num2str(rem(x,10));
            c=floor(x/10);
        end        
    end    
end
n(1)=num2str(c);
if n(1)=='0'
    n(1)=[];
end
end