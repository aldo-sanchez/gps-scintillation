clc; close all; clear all
 
% Plot format gotten from Dr. Humphrey's plotsat.m
 
% load combo_322_full
load combo_323_full
% load combo_324_full_wrw
% load combo_324_full_cornell
% load combo_325_full
% load combo_325_ARL
circular_plot
x = [];
y = [];
for s = 1:samples       
  % plot each satellite location for that sample
  for sv = 1:sats
    % check if positive or negative elevation
    if (elevation((s - 1) * sats + sv) < 0)
      elNeg = 1;
    else
      elNeg = 0;
    end
    % convert to plottable cartesian coordinates
    el = elevation((s - 1) * sats + sv);
    az = azimuth((s - 1) * sats + sv);
    x = [x;(pi/2-abs(el))/(pi/2).*cos(az-pi/2)];
    y = [y;-1*(pi/2-abs(el))/(pi/2).*sin(az-pi/2)];
 
  end
end
% Save several times of trajectory for video
z = combo(:,5);
load('MyColormaps','mycmap')
 
scatter(x,y,3,z);
fig = figure (10);
set(fig,'Colormap',mycmap)
colorbar
% title('November 17, 2012')%322
% title('November 18, 2012')%323
% title('November 19, 2012')%324
title('November 20, 2012')%325
% 
axis equal
% figure (2)
