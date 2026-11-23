% DSP WEEK 1 - TASK 1.4
% Discrete-Time Signals using GNU Octave

clc;
clear;
close all;

n = -5:10;

% Unit Impulse Signal
delta = double(n == 0);

% Unit Step Signal
u = double(n >= 0);

% Unit Ramp Signal
r = n .* u;

% Exponential Signal
expo = (0.8 .^ n) .* u;

% Plot all four signals
figure;

subplot(1,4,1);
stem(n, delta);
title("Unit Impulse");
xlabel("n");
grid on;

subplot(1,4,2);
stem(n, u);
title("Unit Step");
xlabel("n");
grid on;

subplot(1,4,3);
stem(n, r);
title("Unit Ramp");
xlabel("n");
grid on;

subplot(1,4,4);
stem(n, expo);
title("Exponential");
xlabel("n");
grid on;
