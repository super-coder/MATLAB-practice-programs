function [ w ] = move_me( v,a )
    z=[];
    if nargin==1
            a=0;
    end    
    for i=1:length(v)       
        if v(i)==a
           z=[z v(i)];
        end      
    end
    v1=v(v~=a)
    w=[v1 z];
end
