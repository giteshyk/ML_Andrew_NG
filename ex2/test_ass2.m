clear ; close all; clc
data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);

fprintf(['Plotting data with + indicating (y = 1) examples and o ' ...
         'indicating (y = 0) examples.\n']);

plotData(X, y);
hold on;

xlabel('Exam 1 score')
ylabel('Exam 2 score')

legend('Admitted', 'Not admitted')
hold off;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
[m, n] = size(X);

X = [ones(m, 1) X];
initial_theta = zeros(n + 1, 1);

hyp = sigmoid(X*)

temp1 = hyp*y ;
temp2 = hyp*(1-y);

J = -(1/m)*[temp1 + temp2];

