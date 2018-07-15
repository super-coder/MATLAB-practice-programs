function [n] = digit_counter(filename)
fid=fopen(filename,'rt');
x={'0','1', '2' '3' '4' '5' '6' '7' '8' '9'};
n=0;
if fid<0
    n=fid;
    return;
end
oneline=fgets(fid);
while ischar(oneline)
   for i=1:length(oneline)
       for j=1:length(x)
       if oneline(i)==x{j}
           n=n+1;
       end
       end
   end
   oneline=fgets(fid);
end
fclose(fid);

end

