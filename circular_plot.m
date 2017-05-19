navConstants;
 
% From Dr. Humphreys' plotsat.m
gpsTime = combo(:,3);
i = 1;
t = gpsTime;
while ((i ~= size(combo,1)) & (t == gpsTime))
  i = i + 1;
  t = combo(i,2);
end
if (t == gpsTime)
  sats = i;
else
  sats = i - 1;
end;
samples = size(combo,1) / sats;
SVs = combo(1:sats,1);
elevation = combo(:,20).*pi/180;
azimuth = combo(:,19).*pi/180;
% initialize polar - plotting area
figure(10);
axis([-1.4 1.4 -1.1 1.1]);
axis('off');
axis(axis);
hold on;
% plot circular axis and labels
th = 0:pi/50:2*pi;
x = [ cos(th) .67.*cos(th) .33.*cos(th) ];
y = [ sin(th) .67.*sin(th) .33.*sin(th) ];
plot(x,y,'color','w');
text(1.1,0,'90','horizontalalignment','center');
text(0,1.1,'0','horizontalalignment','center');
text(-1.1,0,'270','horizontalalignment','center');
text(0,-1.1,'180','horizontalalignment','center'); 
% plot spoke axis and labels
th = (1:6)*2*pi/12;
x = [ -cos(th); cos(th) ];
y = [ -sin(th); sin(th) ];
plot(x,y,'color','w');
text(-.46,.93,'0','horizontalalignment','center');
text(-.30,.66,'30','horizontalalignment','center');
text(-.13,.36,'60','horizontalalignment','center');
text(.04,.07,'90','horizontalalignment','center');
