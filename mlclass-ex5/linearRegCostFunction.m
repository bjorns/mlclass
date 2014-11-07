function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

h = X * theta;
J = sum((h-y).^2)/(2*m) + sum(theta(2:end).^2)*lambda/(2*m);


regfilter = ones(size(theta));
regfilter(1) = 0;

grad = (X' * (h-y) / m) + (lambda/m) * regfilter .* theta;


end
