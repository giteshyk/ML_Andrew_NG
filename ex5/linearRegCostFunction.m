function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad
% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
hyp = X*theta;
err = hyp-y;

theta1 = theta;
theta1(1) = 0;  %dont regularize theta's first parameter theta_one
J = (1/(2*m))*(err'*err) + (lambda/(2*m))*(theta1'*theta1);

grad = (1/m)*err'*X + (lambda/m)*sum(theta);
% =========================================================================
grad = grad(:);
end
