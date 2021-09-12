% make plots for Chen McKenna

load chen12;

ms = 40;
fontSize=20;
lw = 3;

%% primary pulse

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
plot(x,ynew,'LineWidth',lw);
axis([-25 25 -6 1]);

%%

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
hold on;
plot(x,ud(:,1),'-r','Linewidth',3);
plot(x,ud(:,2),'-b','Linewidth',3);
plot(x,ud(:,3),'-.r','Linewidth',3);
plot(x,ud(:,4),'-.b','Linewidth',3);
axis([-20 20 -9 2]);

text(-15.5,-8,'$n=5$','FontSize',20,'interpreter','latex','Color','Blue');
text(-7.7,-8,'$n=3$','FontSize',20,'interpreter','latex','Color','Blue');
text(1,-8,'$n=2$','FontSize',20,'interpreter','latex','Color','Red');
text(8,-8,'$n=4$','FontSize',20,'interpreter','latex','Color','Red');
arrow([-13, -7.5], [-10, -5.5], 'LineWidth',2,'Color','Blue');
arrow([-5.5, -7.5], [-5.5, -6], 'LineWidth',2,'Color','Blue');
arrow([3.5, -7.5], [3.5, -5.5], 'LineWidth',2,'Color','Red');
arrow([10.5, -7.5], [7.3, -5.85], 'LineWidth',2,'Color','Red');


% set(gca,'visible','off');

%% unstable

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
plot(x,ud(:,1),'-r','Linewidth',3);
axis([-30 30 -6 2]);

text(-28,1.25,'$n=2$','FontSize',22,'interpreter','latex');


axes('Position',[.625 .15 .25 .25])
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



%% stable

figure('DefaultAxesFontSize',fontSize);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
plot(x,ud(:,2),'-b','Linewidth',3);
axis([-30 30 -6 2]);

text(-28,1.25,'$n=3$','FontSize',22,'interpreter','latex');


axes('Position',[.625 .15 .25 .25])
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
