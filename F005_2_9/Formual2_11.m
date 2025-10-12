clear
clc

syms theta v1 v2 v3 

theta0 = cos(theta/2);
theta1 = v1 * sin(theta/2);
theta2 = v2 * sin(theta/2);
theta3 = v3 * sin(theta/2);

result1 = theta0^2 + theta1^2 + theta2^2+ theta3^2

THETA = [theta0 theta1 theta2 theta3].'  %   .'是实数转置， ’是共轭转置
THETA_T = [theta0 theta1 theta2 theta3]
result2 = THETA_T * THETA

if result1== result2
    disp("equal")
else
    disp("Not equal")
end