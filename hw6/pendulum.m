function [ T ] = pendulum( L,a0 )
    g=9.8;
    theta=a0;
    omega=0;
    T=0;
    if L<=0
        return;
    end
    while theta>0
        alpha=-g*sin(theta)/L;
        omega=omega+alpha*1*10^-6;
        theta=theta+omega*1*10^-6;
        T=T+1*10^-6;
    end
   T=4*T;
end