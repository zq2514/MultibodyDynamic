% 多体动力学
% 书中公式2.9-2.14 是否相等的计算；
% 结论是相等；
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
A = I+ v_anti*sin(theta) + 2 * v_anti^2 * sin(theta/2)^2    % 最后一项是 （theta/2）的平方；



theta0 = cos(theta/2);
theta1 = v1 * sin(theta/2);
theta2 = v2 * sin(theta/2);
theta3 = v3 * sin(theta/2);

A1 = [1-2*theta2^2-2*theta3^2          2*(theta1*theta2-theta0*theta3)    2*(theta1*theta3 + theta0*theta2);
    2*(theta1*theta2+theta0*theta3)    1 - 2*theta1^2 - 2 * theta3^2      2*(theta2*theta3 - theta0*theta1);
    2*(theta1*theta3-theta0*theta2)    2*(theta2*theta3+theta0*theta1)    1-2*theta1^2 - 2 * theta2^2 ]

if A == A1
    disp("equal")
else
    disp("Not equal")
end

A2 = [(2 * theta0^2 + 2*theta1^2)-1    2*(theta1*theta2-theta0*theta3)      2*(theta1*theta3 + theta0*theta2);
    2*(theta1*theta2+ theta0*theta3)   (2*theta0^2+2*theta2^2)-1            2*(theta2*theta3 - theta0*theta1);
    2*(theta1*theta3 - theta0*theta2)  2*(theta2*theta3 + theta0*theta1)    (2*theta0^2 + 2*theta3^2)-1]

if A2 == A1
    disp("equal")
else
    disp("Not equal")
end

result1 = theta0^2 + theta1^2 + theta2^2+ theta3^2

