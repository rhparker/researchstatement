% sech2 profile

fontSize = 16;
lw = 3;
figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
c = 1;
x = linspace(-40,40,1000);
y = (c/2)*sech( sqrt(c)*x/2 ).^2;
plot(x,y,'LineWidth',lw);
% ax.XAxisLocation = 'origin';
% ax.YAxisLocation = 'origin';
set(gca,'xtick',[]);
set(gca,'ytick',[]);
% axis([-2 6 -15 15]);
pbaspect([3 1 1]);

%% cnoidal
figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
m = 0.995;
x = linspace(-14,14,1000);
plot( x, jacobiCN(x,m).^2,'LineWidth',lw);
set(gca,'xtick',[]);
set(gca,'ytick',[]);
pbaspect([3 1 1]);

%% spatial dynamics
fontSize = 16;
ms = 50;
lw = 3;
figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
c = 1;
x = linspace(-40,40,1000);
y  = (c/2)*sech( sqrt(c)*x/2 ).^2;
y1 = (y(2:end)-y(1:end-1))/(x(2)-x(1))

hold on;
plot(y(1:end-1),y1,'LineWidth',lw+1);
scale = 0.05;
plot(scale*[1, -1], scale*[-1, 1], '-k', 'LineWidth',lw+1);
arrow([0 0], 0.9*scale*[1 1], 'LineWidth',lw+1);
arrow([0 0], 0.9*scale*[-1 -1], 'LineWidth',lw+1);
arrow(scale*[1 -1], scale*[1 -1]/3, 'LineWidth',lw+1);
arrow(scale*[-1 1], scale*[-1 1]/3, 'LineWidth',lw+1);
plot([0 1/3],[0 0],'.r','MarkerSize',ms);
axis([-0.1,0.55,-0.22,0.22]);

ax = gca()
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
set(gca,'xtick',[]);
set(gca,'ytick',[]);
xlabel('$u$');
ylabel('$v = u_x$');
text(0.505,-0.025,'$\frac{c}{2}$','FontSize',30,'interpreter','latex');
text(1.05/3,-0.025,'$\frac{c}{3}$','FontSize',30,'interpreter','latex');

pbaspect([1.5 1 1]);

%% spatial dynamics, labeled plot u vs x
fontSize = 16;
ms = 50;
lw = 3;
figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
c = 1;
x = linspace(-40,40,1000);
y  = (c/2)*sech( sqrt(c)*x/2 ).^2;
y1 = (y(2:end)-y(1:end-1))/(x(2)-x(1))

hold on;
plot(x,y,'LineWidth',lw+1);

ax = gca()
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
set(gca,'xtick',[]);
set(gca,'ytick',[]);
xlabel('$x$');
ylabel('$u$');
text(4,0.4,'$u(x) = \frac{c}{2}\:$sech$^2\Big(\frac{\sqrt{c}}{2}x\Big)$','FontSize',20,'interpreter','latex');
axis([-40,40,-0.01,0.6]);


pbaspect([1.5 1 1]);