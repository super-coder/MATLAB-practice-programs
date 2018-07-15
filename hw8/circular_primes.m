function r=circular_primes(c)
n=1;
r=0;
while n~=c
n=num2str(n);
u=char(size(n,2));
x=repmat(' ',[size(n,2) size(n,2)]);
u=n;
for k=1:size(n,2)
    x(k,1:end-1)=u(2:end);
    x(k,end)=u(1);
    u=x(k,:);
end
x=string(x);
y=str2double(x);
d=0;
for i=1:size(y,1)
   if isprime(y(i))
       d=d+1;
   end
end
if d==size(y,1)
    r=r+1;
end
n=str2num(n);
n=n+1;
end
end
