function [y] = logiunpack(cv)
    y=zeros(length(cv));
    for j=1:length(cv)
        for i=1:length(cv{j})
        y(j,cv{j}(i))=1;
        end
    end
    
    y=logical(y);
           
            
   
       
   
end