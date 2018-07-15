function cv = logipack(y)
y=double(y);
    cv=cell(1,size(y,1));
    for i=1:size(y,1)
            for j=1:size(y,2)
            if y(i,j)==1
                cv{i}(j)=j;
            end       
            cv{j}=cv{j}(cv{j}~=0);
        end
    end
end
