function [Volume, Surface, Circumference] = SphereData_local(r)
% input
% r: radiums of Sphere
% output:
% volume, Surface, circumference of Sphere

%nested function for volume
    function vol = calc_vol(r)
        vol = (4/3)*pi*r.^3;
    end 
%nested function for surface
    function surf = calc_surf(r)
        surf = 4*pi*r.^2;
    end
%nested function for circumference
    function circum = calc_circum(r)
        circum = 2*pi*r;
    end

Volume = calc_vol(r);
Surface = calc_surf(r);
Circumference = calc_circum(r);
end