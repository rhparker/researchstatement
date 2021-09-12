load dpdata20;

xF(end) = 1;
xpi = xF*2*pi;
rad = 1.2;
rado = 1.3;
radi = 1.1;
radt0 = 1.4;
radtpi = 1.6;

y = dp(:,1);
[pks,locs] = findpeaks(y, 'MinPeakHeight',10);
depth = 0;

ms = 30;
lw = 3;

figure;
hold all;
plot3( cos(xpi), sin(xpi), dp(:,1), 'LineWidth', lw );
plot3( rad*cos(xpi), rad*sin(xpi), depth*ones(size(xpi)), '-k', 'LineWidth', 2 );
% plot3( rad*cos(xpi(locs)), rad*sin(xpi(locs)), depth*ones(size(xpi(locs))), '.k', 'MarkerSize', ms); 
plot3( [radi rado]*cos(xpi(locs(1))), [radi rado]*sin(xpi(locs(1))), depth*ones(2,1), '-k', 'LineWidth', 2); 
plot3( [radi rado]*cos(xpi(locs(2))), [radi rado]*sin(xpi(locs(2))), depth*ones(2,1), '-k', 'LineWidth', 2); 
ax1 = rad*cos(0.95*xpi(locs(1)));
ay1 = rad*sin(0.95*xpi(locs(1)));
ax1a = rad*cos(1.05*xpi(locs(1)));
ay1a = rad*sin(1.05*xpi(locs(1)));
ax2 = rad*cos(xpi(locs(1)));
ay2 = rad*sin(xpi(locs(1)));
bx1 = rad*cos(0.95*xpi(locs(2)));
by1 = rad*sin(0.95*xpi(locs(2)));
bx1a = rad*cos(1.05*xpi(locs(2)));
by1a = rad*sin(1.05*xpi(locs(2)));
bx2 = rad*cos(xpi(locs(2)));
by2 = rad*sin(xpi(locs(2)));
arrow([ax1,ay1],[ax2,ay2],'Length',20, 'TipAngle',25);
arrow([ax1a,ay1a],[ax2,ay2],'Length',20, 'TipAngle',25);
arrow([bx1,by1],[bx2,by2],'Length',20, 'TipAngle',25);
arrow([bx1a,by1a],[bx2,by2],'Length',20, 'TipAngle',25);
text(radt*cos(0),radt*sin(0),0,'$X_1$','FontSize',20);
text(radtpi*cos(1.025*pi),radtpi*sin(1.025*pi),0,'$X_0$','FontSize',20);
view(3);

set(gca,'xtick',[]);
set(gca,'ytick',[]);
set(gca,'ztick',[]);
axis off;
grid off;

