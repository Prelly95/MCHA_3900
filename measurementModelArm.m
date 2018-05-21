function [y,C,SR] = measurementModelArm(x,u,param)

%States
theta = x(1, 1:3);
omega = x(1, 4:6);
bias  = x(1, 7:9);

% Measurement prediction
y = [
        %accellometer measurement model
        g*cos(theta)
        %gyro measurment model
        omega +bias
        %magnetometer measurment model
        magx
        magy
        magz
    ];

% Jacobian of h(x)
C = [
        ???
    ];
% Square-root covariance of additive measurement noise
SR = ???;