

%% 3D Plot p vs p^d
% Este graficarlo con el control de Taeyoung Lee para comparación.
%
%
load("leedata.mat");
%
%
figure('DefaultAxesFontSize', 11)
% MIO
A = subplot(1,2,1,'FontSize',11);
plot3(out.p(1,:), out.p(2,:), out.p(3,:), 'b', 'LineWidth', 1.0);
hold on
plot3(out.pd(:,1), out.pd(:,2)', out.pd(:,3)', 'r:', 'LineWidth', 1.0);
hold on
title('\rm Proposed control','fontname','times');
grid on;
xlabel('$x$ [m]','interpreter', 'latex');  
ylabel('$y$ [m]','interpreter', 'latex');  
zlabel('$z$ [m]','interpreter', 'latex');
h = legend('$p(t)$','$p^d(t)$');
set(h, 'Interpreter', 'latex');
set(A ,'FontSize', 9);
%
% Taeyoung Lee val(:,:,1)
B = subplot(1,2,2,'FontSize',11);
plot3(lee.pTaeLee(1,:), lee.pTaeLee(2,:), lee.pTaeLee(3,:), 'b', 'LineWidth', 1.0);
hold on
plot3(out.pd(:,1), out.pd(:,2)', out.pd(:,3)', 'r:', 'LineWidth', 1.0);
hold on
title('\rm State-of-the-art-control','fontname','times');
grid on;
xlabel('$x$ [m]','interpreter', 'latex');  
ylabel('$y$ [m]','interpreter', 'latex');  
zlabel('$z$ [m]','interpreter', 'latex');
h = legend('$p(t)$','$p^d(t)$');
set(h, 'Interpreter', 'latex');
set(B ,'FontSize', 9);

%% e_R , e_Omega
% e_R(1)
figure('DefaultAxesFontSize', 11);
%
A = subplot(3,2,1,'FontSize',9); 
plot(out.rotErr1,'b','LineWidth',1.0);
ylabel('$e_R(1)$, [deg]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('Rotation errors');
set(h, 'Interpreter', 'latex');
set(A ,'FontSize', 9);
%
% e_Omega(1)
B = subplot(3,2,2,'FontSize',9);
plot(out.OmegaErr1, 'r', 'LineWidth', 1.0);
ylabel('$e_{\Omega}(1)$, [deg/s]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('Angular velocities');
set(h, 'Interpreter', 'latex');
set(B,'FontSize', 9);
%
% e_R(2)
C= subplot(3,2,3,'FontSize',9); 
plot(out.rotErr2, 'b','LineWidth',1.0);
ylabel('$e_R(2)$, [deg]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
set(C,'FontSize', 9);
%
% e_Omega(2)
D = subplot(3,2,4,'FontSize',9);
plot(out.OmegaErr2, 'r', 'LineWidth', 1.0);
ylabel('$e_{\Omega}(2)$, [deg/s]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
set(D,'FontSize', 9);
%
% e_R(3)
E = subplot(3,2,5,'FontSize',9); 
plot(out.rotErr3,'b','LineWidth',1.0);
ylabel('$e_R(3)$, [deg]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;
set(E,'FontSize', 9);
%
% e_Omega(3)
F = subplot(3,2,6,'FontSize',9);
plot(out.OmegaErr3, 'r', 'LineWidth', 1.0);
ylabel('$e_{\Omega}(3)$, [deg/s]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;  
set(F ,'FontSize', 9);

%% ep , ev
% ep(x)
figure('DefaultAxesFontSize',12)
A = subplot(3,2,1,'FontSize',11); 
plot(out.ep1,'b','LineWidth',1.0);
hold on;
plot(out.l1,'m','LineWidth',1.0);
hold on;
plot(-1*out.l1,'m','LineWidth',1.0);
hold on;
ylabel('$e^p_1$, [m]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('Position errors');
set(h, 'Interpreter', 'latex');
set(A ,'FontSize', 9);
%
% ev(x)
B = subplot(3,2,2,'FontSize',11);
plot(out.ev1, 'r', 'LineWidth', 1.0);
hold on;
plot(out.m1,'m','LineWidth',1.0);
hold on;
plot(-1*out.m1,'m','LineWidth',1.0);
hold on;
ylabel('$e^v_1$, [m/s]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('Velocity errors');
set(h, 'Interpreter', 'latex');
set(B ,'FontSize', 9);
%
% ep(y)
C = subplot(3,2,3,'FontSize',11); 
plot(out.ep2, 'b','LineWidth',1.0);
hold on;
plot(out.l2,'m','LineWidth',1.0);
hold on;
plot(-1*out.l2,'m','LineWidth',1.0);
hold on;
ylabel('$e^p_2$, [m]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
set(C ,'FontSize', 9);
%
% ev(y)
D = subplot(3,2,4,'FontSize',11);
plot(out.ev2, 'r', 'LineWidth', 1.0);
hold on;
plot(out.m2,'m','LineWidth',1.0);
hold on;
plot(-1*out.m2,'m','LineWidth',1.0);
hold on;
ylabel('$e^v_2$, [m/s]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on; 
set(D ,'FontSize', 9);
%
% ep(z)
E = subplot(3,2,5,'FontSize',11); 
plot(out.ep3,'b','LineWidth',1.0);
hold on;
plot(out.l3,'m','LineWidth',1.0);
hold on;
plot(-1*out.l3,'m','LineWidth',1.0);
hold on;
ylabel('$e^p_3$, [m]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
set(E ,'FontSize', 9);
%
% ev(z)
F = subplot(3,2,6,'FontSize',11);
plot(out.ev3, 'r', 'LineWidth', 1.0);
hold on;
plot(out.m3,'m','LineWidth',1.0);
hold on;
plot(-1*out.m3,'m','LineWidth',1.0);
hold on;
ylabel('$e^v_3$, [m/s]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;
set(F ,'FontSize', 9);


%% (phat , p) vs (vhat , v)
% phat(1), p(1)
figure('DefaultAxesFontSize',12)
A = subplot(3,2,1,'FontSize',11); 
plot(out.phat1,'b','LineWidth',1.0);
hold on;
plot(out.p1,'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{p}_1, p_1$, [m]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{p}_1$', '$p_1$');
set(h, 'Interpreter', 'latex');
set(A ,'FontSize', 9);
%
% vhat(1), v(1)
B = subplot(3,2,2,'FontSize',11);
plot(out.vhat1, 'b', 'LineWidth', 1.0);
hold on;
plot(out.v1, 'r:', 'LineWidth', 1.0);
hold on;
ylabel('$\hat{v}_1, v_1$, [m/s]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{v}_1$', '$v_1$');
set(h, 'Interpreter', 'latex');
set(B ,'FontSize', 9);
%
% phat(2), p(2)
C = subplot(3,2,3,'FontSize',11); 
plot(out.phat2, 'b','LineWidth',1.0);
hold on;
plot(out.p2, 'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{p}_2, p_2$, [m]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{p}_2$', '$p_2$');
set(h, 'Interpreter', 'latex');
set(C ,'FontSize', 9);
%
% vhat(2), v(2)
D = subplot(3,2,4,'FontSize',11);
plot(out.vhat2, 'b', 'LineWidth', 1.0);
hold on;
plot(out.v2, 'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{v}_2, v_2$, [m/s]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{v}_2$', '$v_2$');
set(h, 'Interpreter', 'latex');
set(D ,'FontSize', 9);
%
% phat(3), p(3)
E = subplot(3,2,5,'FontSize',11); 
plot(out.phat3,'b','LineWidth',1.0);
hold on;
plot(out.p3,'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{p}_3, p_3$, [m]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{p}_3$', '$p_3$');
set(h, 'Interpreter', 'latex');
set(E ,'FontSize', 9);
%
% vhat(3), v(3)
F = subplot(3,2,6,'FontSize',11);
plot(out.vhat3, 'b', 'LineWidth', 1.0);
hold on;
plot(out.v3, 'r:', 'LineWidth', 1.0);
hold on;
ylabel('$\hat{v}_3, v_3$, [m/s]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{v}_3$', '$v_3$');
set(h, 'Interpreter', 'latex');
set(F ,'FontSize', 9);

%% control vectorial vs M
% control vectorial
figure('DefaultAxesFontSize',12)
A = subplot(1,2,1,'FontSize',11); 
plot(out.u1, 'b', 'LineWidth', 1.0);
hold on;
plot(out.u2, 'r', 'LineWidth', 1.0);
hold on;
plot(out.u3, 'k', 'LineWidth', 1.0);
hold on;
ylabel('$u$ [N]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$u_1$', '$u_2$', '$u_3$');
set(h, 'Interpreter', 'latex');
set(A ,'FontSize', 9);
%
% (deltahat vs delta)
B = subplot(1,2,2,'FontSize',11); 
plot(out.tau1, 'b', 'LineWidth', 1.0);
hold on;
plot(out.tau2, 'r', 'LineWidth', 1.0);
hold on;
plot(out.tau3, 'k', 'LineWidth', 1.0);
hold on;
ylabel('$u_{\tau}$ [N/m]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$u_{\tau_1}$', '$u_{\tau_2}$', '$u_{\tau_3}$');
set(h, 'Interpreter', 'latex');
set(B ,'FontSize', 9);

%% (deltahat, delta) vs (delta_att)
% deltahat^v_1, delta^v_1
figure('DefaultAxesFontSize',12)
A = subplot(3,2,1,'FontSize',11); 
plot(out.DeltaPosHat1,'b','LineWidth',1.0);
hold on;
plot(out.Delta1,'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{\Delta}^{v}_1, {\Delta}^{v}_1$, [N]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{\Delta}^{v}_1$', '${\Delta}^{v}_1$');
set(h, 'Interpreter', 'latex');
set(A ,'FontSize', 9);
%
% delta^{Omega}_1
B = subplot(3,2,2,'FontSize',11);
plot(out.DeltaAtt1, 'r', 'LineWidth', 1.0);
ylabel('$\Delta^{\Omega}_1$, [Nm]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\Delta^{\Omega}_1$');
set(h, 'Interpreter', 'latex');
set(B ,'FontSize', 9);
%
% deltahat^v_2, delta^v_2
C = subplot(3,2,3,'FontSize',11); 
plot(out.DeltaPosHat2,'b','LineWidth',1.0);
hold on;
plot(out.Delta2,'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{\Delta}^{v}_2, {\Delta}^{v}_2$, [N]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{\Delta}^{v}_2$', '${\Delta}^{v}_2$');
set(h, 'Interpreter', 'latex');
set(C ,'FontSize', 9);
%
% delta^{Omega}_2
D = subplot(3,2,4,'FontSize',11);
plot(out.DeltaAtt2, 'r', 'LineWidth', 1.0);
ylabel('$\Delta^{\Omega}_2$, [Nm]','interpreter', 'latex');  
xlabel('','interpreter', 'latex'); 
grid on;   
h = legend('$\Delta^{\Omega}_2$');
set(h, 'Interpreter', 'latex');
set(D ,'FontSize', 9);
%
% deltahat^v_3, delta^v_3
E = subplot(3,2,5,'FontSize',11); 
plot(out.DeltaPosHat3,'b','LineWidth',1.0);
hold on;
plot(out.Delta3,'r:','LineWidth',1.0);
hold on;
ylabel('$\hat{\Delta}^{v}_3, {\Delta}^{v}_3$, [N]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$\hat{\Delta}^{v}_3$', '${\Delta}^{v}_3$');
set(h, 'Interpreter', 'latex');
set(E ,'FontSize', 9);
%
% delta^{Omega}_3
F = subplot(3,2,6,'FontSize',11);
plot(out.DeltaAtt3, 'r', 'LineWidth', 1.0);
ylabel('$\Delta^{\Omega}_3$, [Nm]','interpreter', 'latex');  
xlabel('time[sec]','interpreter', 'latex'); 
grid on;   
h = legend('$\Delta^{\Omega}_3$');
set(h, 'Interpreter', 'latex');
set(F ,'FontSize', 9);

