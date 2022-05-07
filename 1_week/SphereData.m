function [Volume, Surface, Circumference] = SphereData(r)
% input
% r: radiums of Sphere
% output:
% volume, Surface, circumference of Sphere

%nested function for volume
    function vol = calc_vol
        vol = (4/3)*pi*r.^3;
    end 
%nested function for surface
    function surf = calc_surf
        surf = 4*pi*r.^2;
    end
%nested function for circumference
    function circum = calc_circum
        circum = 2*pi*r;
    end

Volume = calc_vol;
Surface = calc_surf;
Circumference = calc_circum;
end
