function [ x,pole ] = fence( lng,seg )
    x=ceil(lng/seg);
    pole=x+1;

end