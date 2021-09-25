load evenhole6data
z = linspace(0,2*pi,1000);


%%  solution

figure('DefaultAxesFontSize',20);
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(gca,'fontname','times');
hold on
lS = {'-','--',':','-.'};
NPlot=4;
for index = 1:NPlot
    plot(t,real( u(index,:)),'Linewidth',4, 'LineStyle', lS{index} );
end
axis([0 2*pi -1 1]);

legendCell = strcat('n=', string(num2cell(1:NPlot)) );legend(legendCell, 'location','SouthEast');
xlabel('$z$','Interpreter','latex');
ylabel('Re $c_n$','Interpreter','latex');

%% amplitudes

figure('DefaultAxesFontSize',20);
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(gca,'fontname','times');

hold on;
plot(1:N,abs(amps),'.b','MarkerSize',50);
xlabel('$n$','Interpreter','latex');
ylabel('$|c_n|$','Interpreter','latex');
set(gca,'XTick',1:N);
set(gca,'YTick',[-1 -0.5 0 0.5 1]);
axis([1 N 0 1]);


%% solution, amplitudes, and phases

figure('DefaultAxesFontSize',28,'Position', [0 0 700 600]);
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(gca,'fontname','times');

ax1 = subplot(2,2,[2 4]);
hold on
lS = {'-','--',':','-.'};
NPlot=4;
for index = 1:NPlot
    plot(t,abs(u(index,:)),'Linewidth',3, 'LineStyle', lS{mod(index,length(lS))+1} );
end
legendCell = strcat('n=', string(num2cell(1:NPlot)) );
legend(legendCell,'Interpreter','latex','location','northeast');
xlabel('$z$ (mm)','Interpreter','latex');
ylabel('$|c_n|$','Interpreter','latex');
set(gca,'XTick', [0 2*pi 4*pi] );
xticklabels({'$0$','$2\pi$','$4\pi$'});

% axis([0 4*pi 0 1.2]);
axis([0 4*pi 0 1.0]);

ax2=subplot(2,2,1);
hold on;
plot(1:N,amps,'.b','MarkerSize',40);
% plot(1:N,amps,'-k');
xlabel('$n$','Interpreter','latex');
ylabel('$a_n$','Interpreter','latex');
set(gca,'XTick',1:N);
set(gca,'YTick',[-1 -0.5 0 0.5 1]);

axis([1 N -0.5 1]);
% axis([1 N -0.5 1.25]);

% axis(ax2,'tight');

ax3=subplot(2,2,3);
hold on;
plot(1:N,p,'.r','MarkerSize',40);
% plot(1:N,amps,'-k');
xlabel('$n$','Interpreter','latex');
ylabel('$\theta_n$','Interpreter','latex');
set(gca,'XTick',1:N);

set(gca,'YTick',[-pi/3 -pi/6 0 pi/6 pi/3]);
axis([1,N,-pi/6 pi/6]);
yticklabels({'$-\pi/3$','$-\pi/6$','$0$','$\pi/6$','$\pi/3$'});

set(gca,'YTick',[-pi/3 -pi/6 0 pi/6 pi/3]);
axis([1,N,-pi/3 pi/3]);
yticklabels({'$-\pi/3$','$-\pi/6$','$0$','$\pi/6$','$\pi/3$'});

% set(gca,'YTick',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2]);
% axis([1,N,-pi/2 pi/2]);
% yticklabels({'$-\pi/2$','$-\pi/3$','$-\pi/6$','$0$','$\pi/6$','$\pi/3$','$\pi/2$'});

% axis(ax3,'tight');

%% spectrum

figure('DefaultAxesFontSize',34);
set(gca,'fontname','times');
set(groot,'defaultAxesTickLabelInterpreter','latex');  
set(groot,'defaulttextinterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
plot(l, '.', 'MarkerSize',50);
axis([-1,1,-2,2]);
xlabel('Re $\lambda$','Interpreter','latex');
ylabel('Im $\lambda$','Interpreter','latex');