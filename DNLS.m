% DNLS stuff

load DNLS;
ms = 40;
fontSize=20;

%% primary pulse

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

hold on;
plot(x,u1,'-k','LineWidth',2);
plot(x,u1,'.b','MarkerSize',ms);
axis([-25,25,-0.1,1.5]);

%% double pulse, stable

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

hold on;
plot(x,u2pi,'-k','LineWidth',2);
plot(x,u2pi,'.b','MarkerSize',ms);
axis([-25,25,-1.5,1.5]);

axes('Position',[.65 .65 .25 .25])
hold on;
ax = gca()
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
xlabel('Re $\lambda$');
ylabel('Im $\lambda$');
plot([0],[0], '.k', 'MarkerSize', 40);
plot([0 0],[-1 1], '.r', 'MarkerSize', 40);
axis([-2,2,-2.5,2.5]);
set(gca,'xtick',[]);
set(gca,'ytick',[]);
box on

%% double pulse, unstable

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');

hold on;
plot(x,u20,'-k','LineWidth',2);
plot(x,u20,'.b','MarkerSize',ms);
axis([-25,25,-0.1,1.5]);

axes('Position',[.65 .65 .25 .25])
hold on;
ax = gca()
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
xlabel('Re $\lambda$');
ylabel('Im $\lambda$');
plot([0],[0], '.k', 'MarkerSize', 40);
plot([-1 1],[0 0], '.r', 'MarkerSize', 40);
axis([-3,3,-2.5,2.5]);
set(gca,'xtick',[]);
set(gca,'ytick',[]);
box on
