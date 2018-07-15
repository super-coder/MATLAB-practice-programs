function [ mbd ] = spherical_mirror_aberr( fn,D )
    f=fn*D;
    delta=0.01;
    x= 0:delta:D/2;
    theta=asin(x./(2*f));
    xn= 2*f*tan(2.*theta).*(1./cos(theta) -1);
    mbd= 8*delta./(D^2)*sum((xn.*x),2);
    


end