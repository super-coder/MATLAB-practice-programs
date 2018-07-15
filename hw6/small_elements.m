function [ Y ] = small_elements( X )
    Y=[];
    for i=1:size(X,2)
        for j=1:size(X,1)
            if X(j,i) <j*i
                Y=[Y;[j i]];
            end
        end
    end


end