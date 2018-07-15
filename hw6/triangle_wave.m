function [ y ] = triangle_wave( n )
    x=linspace(0,4*pi,1001);
    y=0;
    for i=0:n
        y=y+ (-1)^i * (sin((2*i+1)*x)/(2*i+1)^2);
    end
    plot(x,y)
end