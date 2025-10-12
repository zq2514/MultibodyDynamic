% 多体动力学
% 2.2 转化举证的性质章节
% 
clear
clc

syms theta v1 v2 v3 
I= [1  0  0;
    0  1  0;
    0  0  1];
v_anti =[  0   -v3  v2;
          v3    0   -v1;
         -v2   v1    0];
% 验证 v_anti^2 是一个对称矩阵：
A = v_anti^2

% 验证 v_anti^3 = -v_anti
B = v_anti^3  % v1^2 + v2^2 + v3^2 = 1;

%
I= [1 0  0;
    0 1 0;
    0 0 1];
v_anti =[  0   -v3  v2;
      v3    0   -v1;
     -v2   v1    0];
A = I+ v_anti*sin(theta)+2 * v_anti^2 * sin(theta/2)^2
A_T = A.'  % 计算A转置

A_T2=  I - v_anti*sin(theta)+2 * v_anti^2 * sin(theta/2)^2

if A_T == A_T2
    disp("equal")
else
    disp("Not equal")
end   


 