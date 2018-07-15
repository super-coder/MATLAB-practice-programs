function [ dollars ] = fare( miles, age )
    if miles<=1
        dollars=2;
    elseif miles<=10
        dollars=(round(miles)-1)*0.25+2;
    else
        dollars=(round(miles)-10)*0.1+9*0.25+2;
        end
    if age <= 18 || age >= 60
        dollars=dollars*0.8;
    end  

end