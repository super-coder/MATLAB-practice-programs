function [ x ] = sum3and5muls( w )
    w1=3:3:w;
    w2=5:5:w;
    w3=15:15:w;
    x=sum(w1,2)+sum(w2,2)-sum(w3,2);


end