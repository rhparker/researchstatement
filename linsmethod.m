% plot of Lins method
% example: chen mckenna

load chenD;
y = -y;
yd = -yd_out;

fontSize = 16;
lw = 3;

%% primary pulse
figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
plot(x,y,'-b','LineWidth',lw);
set(gca,'xtick',[]);
set(gca,'ytick',[]);
axis([-40,40,-0.9,3]);

%% lin's method construction of double pulse

lcutoff = 308;
rcutoff = 206;
xleft  = x(1:lcutoff);
xright = x(rcutoff:end);
yleft  = y(1:lcutoff);
yright = y(rcutoff:end);

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
hold on;
plot(x,yd,'-r','LineWidth',3);
plot(xleft-9.75, yleft, ':k','MarkerSize',20,'LineWidth',5);
plot(xright+9.75, yright, ':b','MarkerSize',20,'LineWidth',5);
set(gca,'xtick',[]);
set(gca,'ytick',[]);
axis([-40,40,-0.9,3]);