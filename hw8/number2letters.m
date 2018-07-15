function [c] = number2letters(u)
w= ["one" "two" "three" "four" "five" "six" "seven"...
    "eight" "nine" ];
r=["eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen"...
    "seventeen" "eighteen" "nineteen"];
y=["ten" "twenty" "thirty" "forty" "fifty" "sixty"...
    "seventy" "eighty" "ninety"];
t=["hundred" "ten"];
if u>=100
        x(1)=w(floor(u/100));
        x(2)=t(1);
        if floor(u/10)-10*floor(u/100)==1
            x(3)=r(rem(u,10));
        elseif floor(u/10)-10*floor(u/100)==0
            x(3)=w(rem(u,10));
        else
            x(3)=y(floor(u/10)-10*floor(u/100));
            if rem(u,10)~=0
                x(4)=w(rem(u,10));
            end
        end
elseif u > 10
    if rem(u,10)==0
       x(1)=y(floor(u/10));
    elseif u<20
        x(1)=r(rem(u,10));
    else
       x(1)=y(floor(u/10));
       x(2)=w(rem(u,10));
    end
elseif u==10
    x(1)=t(2);
else
    x(1)=w(rem(u,10));
end
z=char;
for i=1:length(x)
    z=strcat(z,x(i));
end
z=char(z);
c=length(z);
end