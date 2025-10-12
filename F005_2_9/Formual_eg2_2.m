% 多体动力学
% 书中例子2.2计算
clear
clc

R = sqrt(3) * [1 1 1].';

v_anti = 1/sqrt(3) * [ 0  -1  1;
                       1   0  -1;
                      -1   1  0];
I= [1  0  0;
    0  1  0;
    0  0  1];
theta = pi/6;

A = I+ v_anti*sin(theta) + 2 * v_anti^2 * sin(theta/2)^2;

u_flathat = [0,1,0].';
% 计算点P相对于关节1的位置矢量：

r_p = R + A * u_flathat