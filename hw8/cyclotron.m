function [E,N] = cyclotron(V)
m=3.344e-27;
q=1.603e-19;
B=1.600;
r=sqrt(m*V/(q*B^2));
x=r/2.0;
N=0;
d=-2;
while x<=0.5    
   x=x+d*r;
   N=N+1;
   d=-d;
   r=sqrt(r^2 + 2*m*V/(q*B^2));
end
E=V*N*1e-6;
end
