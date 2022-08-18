clc;
clearvars
close all;
set(0,'defaultfigurecolor',[1 1 1])


%%%%%%%%%%%%%%%%%%% MODEL'S CHARACTERISTICS DEFENITION %%%%%%%%%%%%%%%%

%%% Joints' Stiffness

Sp_Stiff = 2.5;

%%% Elements` size parametrs Determination (in cm)

%%% Plates %%%

% Floor plate (in cm)

x_FP = 100;
y_FP = 100;
z_FP = 10;

%%% Side Plates %%%

% Side plate A (in cm)

x_SP_A = x_FP; 
y_SP_A = 10;
z_SP_A = 25;

% Side plate B (in cm)

x_SP_B = x_FP;
y_SP_B = 10;
z_SP_B = 25;

% Side plate C (in cm)

x_SP_C = x_FP-(y_SP_A+y_SP_B);
y_SP_C = 10;
z_SP_C = 25;

% Side plate D (in cm)

x_SP_D = x_SP_C;
y_SP_D = 10;
z_SP_D = 25;

% Side Plate A Transform (in cm)

y_SP_A_T = y_FP/2 - y_SP_A/2;

% Side Plate B Transform (in cm)

y_SP_B_T = -(y_FP/2 - y_SP_B/2);

% Side Plate C Transform (in cm)

x_SP_C_T = x_FP/2 - y_SP_C/2;

% Side Plate D Transform (in cm)

x_SP_D_T = -(x_FP/2 - y_SP_D/2);

%%% Bottom BLDC %%%

% Bottom BLDC

x_Btm_BLDC = 20;
y_Btm_BLDC = 40;
z_Btm_BLDC = 20;

% Bottom BLDC Transform (in cm)

x_Btm_BLDC_Offset = 0;
y_Btm_BLDC_Offset = 0;
z_Btm_BLDC_Offset = 0;

%%% Forearms %%%

% Forearm A (in cm)

x_FA_A = 10;
y_FA_A = 30;
z_FA_A = 200;

% Forearm B (in cm)

x_FA_B = 10;
y_FA_B = 30;
z_FA_B = 200;

% FA Joints A,B Transform (in cm)

y_RT1_offset = -30;
z_RT1_offset = 0;

% Forearm A`s Transform (in cm)

x_FA_T_Offset = 10;
x_FA_A_T = -z_FA_A/2 + x_FA_T_Offset;

% Forearm B`s Transform (in cm)

x_FA_B_T = x_FA_A_T;

%%% Shoulder %%% 

% Shoulder`s Transform A (in cm)

z_SH_T_Offset = 10;
z_SH_A_T = z_FA_A/2 - z_SH_T_Offset;

% Shoulder`s Transform B (in cm)

z_SH_B_T = z_SH_A_T;

% Shoulder (in cm)

x_SH = 100;
y_SH = 40;
z_SH = 100;

% Shoulder`s Transform C (in cm)

x_SH_Offset = 10;
x_SH_C_T = z_SH/2 - x_SH_Offset;

% Shoulder`s Transform D (in cm)

x_SH_D_T = x_SH_C_T;

%%% Claws %%%

% Claw A (in cm)

x_CL_A = 20;
y_CL_A = 30;
z_CL_A = 60;

% Claw B (in cm)

x_CL_B = 20;
y_CL_B = 30;
z_CL_B = 60;

% Claws` Transform A (in cm)

x_CL_T_Offset = 0;
x_CL_T_A = x_CL_A - (x_SH/2 + x_CL_T_Offset);

% Claws` Transform B (in cm)

x_CL_T_B = -x_CL_T_A;


%%%%%%  REV 3.0 Simulation %%%%%%

SimTime = 10; % Simulation time (sec)
Data = sim("REV_3_R2021a.slx",SimTime);