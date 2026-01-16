clc; clear all;
Isc = 8.21;
Voc = 32.9;
Kv = -.123;
Ki = 0.0032;
Rp = 415.405;
Rs = 0.221;
a = 1.3;
Ns = 54;
Tn = 25+273.15;
Gn = 1000;
kq = 1.38e-23 / 1.6e-19;
ser = 45;
par = 690;
Cdc = 278e-3;                 %DC Capacitor value
Vdcn = 1200;                  %Vdcref_n1
Scn = 5e6;                    %Norminal Power
Ucn = 690;                    %Norminal AC Voltage
fg = 50;                      %Base Frequency
Lc = 30.31e-6;                %Converter Inductance
Rc = 0.95e-3;                 %Converter Resistance
Vpeak = Ucn*sqrt(2)/sqrt(3);  %Peak Voltage
% Lc = 30.31e-6; % assignment 1
% Rc = 0.95e-3; %
Imp = 7.61;                   % Current of PV Array
Vmp = 26.3;                   % Voltage of PV Array
kvmpp = Vmp/Voc;              % KvMPPT


T = Tn;
G = 800;
Vt = T*kq*Ns;

%PLL TUNING
xi_pll = 0.707;               %sqrt(2)/2
omega_pll = 2*pi*50;
kp_pll=xi_pll*2*omega_pll/Vpeak;
tau_pll=2*xi_pll/omega_pll;
ki_pll = kp_pll/tau_pll;
omega_n = omega_pll;

%CURRENT CONTROL
tauc = 1e-3;
kpc = Lc/tauc;
kic = Rc/tauc;
tau_p = 1e-2;
%POWER LOOP CONTROL
ki_pq = (3/2)*Vpeak;        %s necessary to adapt the PI output from current to power
kpp = (tauc)/(ki_pq*tau_p); % Proportional constant
kip = 1/(ki_pq*tau_p);        %Integral constant

%Voltage control loop
kp_v = 123.5; %kp for the dc voltage control
ki_v = 2.74e4; %ki for the dc voltage control

%Changing zeta and omega
zeta = 1;
kpv = 2*zeta*omega_n*Cdc;
kiv = (omega_n)^2*Cdc;

