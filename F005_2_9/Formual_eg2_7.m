% 多体动力学
% 2.4章节
% 例题 2.7
% 角速度和姿态参数
% 用这道题来验证公式的正确性；
% 

clear
clc


I= [1 0  0;     % 3x3 单位阵，计算用
    0 1 0;
    0 0 1];


%解 ，由于v是固定的单位矢量，有
% 已知：
r_body = [2 3 4].';  % 目标矢量
theta_dot = 10;     % 恒定的角速度
v = [1/sqrt(3) 1/sqrt(3) 1/sqrt(3) ].'; % 单位矢量v的坐标

% omega = theta_dot * v
% omega_body = omega

% 求解欧拉参数
% 
t = 0.1; % 单位s
theta = theta_dot * t; % rad/s  * s

% 根据公式 theta0 = cos(theta/2), theta1= theta2 = theta3 = 1/sqrt(3) * sin(theta/2)
% 上式对时间微分 theta0_dot = -theta_dot/2 * sin(theta/2)
% theta1_dot = theta2_dot =theta3_dot =  theta_dot/(2*sqrt(3)) *cos(theta/2)
% 所以
theta0 = cos(theta/2)
theta1 = 1/sqrt(3) * sin(theta/2)
theta2 = theta1
theta3 = theta1

theta0_dot = -theta_dot/2 * sin(theta/2)
theta1_dot = theta_dot/(2*sqrt(3)) *cos(theta/2)
theta2_dot =theta1_dot
theta3_dot =theta1_dot

% 根据欧拉公式求解 全局坐标系下的角速度omege 和局部坐标系下的 omega_body
E = [-theta1 theta0 -theta3 theta2;
     -theta2 theta3 theta0  -theta1;
     -theta3 -theta2 theta1 theta0];
THETA_DOT = [theta0_dot theta1_dot theta2_dot theta3_dot].';
E_body = [-theta1  theta0  theta3  -theta2;
          -theta2 -theta3  theta0   theta1;
          -theta3  theta2 -theta1   theta0];
      
omega = 2*E*THETA_DOT
omega_body = 2 * E_body * THETA_DOT
      

