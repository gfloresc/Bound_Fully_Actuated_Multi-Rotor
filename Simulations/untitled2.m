%Inertia Matrix
J = diag([0.0820,0.0845,0.1377]);
%J = eye(3);
J_inv = inv(J);

m = 4.34; %4.34
d = 0.315;
c_tauf = 8.004*(10^-4); %tenia a la -3
g = 9.8;

%Control Constants
k_x = 35; %16
k_v = 22; %5.6
%k_R     = [  200,    0.0    ,    0.0    ;
%              0.0    ,  210 ,    0.0    ;
%              0.0    ,    0.0    ,   200];

%k_omega     = [  140 ,    0.0    ,    0.0    ;
%                 0.0    ,   140 ,    0.0    ;
%                 0.0    ,    0.0    ,   120];

k_R =       ( J_inv )*( 8.81 ); % esa  ( J_inv ) no es porque se este eliminando, es solo un multiplicador
k_omega =   ( J_inv )*( 2.54 ); %   

% ieee l-css paper
k_R_smc =     0.25*( J_inv )*( 20 );
k_omega_smc = 0.10*( J_inv )*( 16 );

b1_des = [1; 0; 0]; %
e3 = [0;  0; 1];


% [][][][][][][][][][][][][][][][][][][][
% Barrier parameters:
%
% Steps:
% 1. Define "lc", the limit of the original output state y = x1 as |x|<= lc
% 2. According to the bounds of xd define A0 as folows, 
%    max{Ybarlow0,Ybarup0} <= Ao < lc
% 3. Compute l = lc - Ao. The error e = x - xd will be bounded by l, i.e.,
%    |e|<= l
% 4. Take care that the initial condition of the error be inside the set
%    |e(0)|<= l = lc - Ao. THIS IS VERY IMPORTANT. Equivalently: 
%    |x(0)| <= l + xd(0) en caso de ser simetrica la referencia.
% 5. Para el caso de que la refercnai no sea simetrica cuidar que las
% condiciones iniciales del sistema siempre esten acotadas por los maximos
% de la referncia deseada

%lc = 3 ;
%Ao = 2.1 ;
%l = lc - Ao ;

%lcv = 2;
%Aov = 1.3;
%lv = lcv - Aov;

%Control parameters
k = 30; %10
kappa = 50; %10

% Salen de: l = x(0) - x_des(0), lv = v(0) - x_des_dot(0)
l = [   0.05  ; %0.2
        0.1  ;%0.5
        0.7 ];

lv = [ 0.5 ;
       1.3 ;
       0.8 ];

% Solo como referencia. Las "l" y "lv" deben ser un epsilon ma sgrande que
% estos:
%x_des     = [             0.4*t ; % 4
%                  0.4*sin(pi*t) ; % 0.4
%                 -0.6*cos(pi*t)]; % 0.6

%x_des_dot = [               0.4 ; % 0.4
%                0.4*pi*cos(pi*t); % 0.4*pi = 1.256
%                0.6*pi*sin(pi*t)];% 0.6*pi = 1.88

%*-*-*-**-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
% OBSERVER PARAMETERS
%
% Stable polinomial of third order:
% s^3 + 21 s^2 + 146 s + 336 = 0  <=> (s+6)*(s+7)*(s+8)=0

eps = 0.01; %0.01; tenia 0.1 antes
alph1 = 21;
alph2 = 146;
alph3 = 336; 


