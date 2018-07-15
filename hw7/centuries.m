function cent= centuries(year)
u=ceil(year/100);
x={'I' 'II' 'III' 'IV' 'V' 'VI' 'VII' 'VIII'...
    'IX' 'X' 'XI' 'XII' 'XIII' 'XIV' 'XV' 'XVI'...
    'XVII' 'XVIII' 'XIX' 'XX' 'XXI' 'XXII' 'XXIII'...
    'XXIV' 'XXV' 'XXVI' 'XXVII' 'XXVIII' 'XXIX' 'XXX'};
if isscalar(year) && year>=1 && year<=3000 && floor(year)==year
cent=x{u};
else 
    cent='';
end

