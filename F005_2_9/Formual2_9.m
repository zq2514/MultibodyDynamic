clear
clc

syms theta v1 v2 v3 
I= [1 0  0;
    0 1 0;
    0 0 1];
v_anti =[  0   -v3  v2;
      v3    0   -v1;
     -v2   v1    0];
A = I+ v_anti*sin(theta)+2 * v_anti^2 * sin(theta/2)^2


 