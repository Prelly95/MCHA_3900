function [xnext,A,SQ] = processModelArm(x,~,param)

T = param.T;

A = [
        1   T   (1/2)*T^2
        0   1   T
        0   0   1
    ];

xnext = A*x;


SQ = param.SQ;