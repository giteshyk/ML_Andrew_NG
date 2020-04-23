clear ; close all; clc
data = load('ex1data2.txt');
X = data(:, 1:2);
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu = mean(X);
sigma = std(X);
temp = (X_norm - mu)./sigma 


