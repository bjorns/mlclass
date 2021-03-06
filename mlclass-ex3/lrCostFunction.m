function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%

% You need to return the following variables correctly 
m = length(y); % number of training examples
n = length(theta); % number of features
h = sigmoid(X * theta); 


one = ones(size(y));
%
partial = -y .* log(h) - (one - y) .* log(one - h);
J = (1/m) * sum(partial) + (lambda/(2*m)) * sum((theta(2:n) .^ 2));
%
%
grad = zeros(size(theta));
grad(1) = (1/m) .* sum((h - y) .* X(:,1));
%for i = 2:n;
%  grad(i) = (1/m) .* sum((h - y) .* X(:,i)) + lambda * theta(i) / m;
%end

grad(2:n) = (1/m) .* ((h - y)' * X(:,2:n))' + lambda * theta(2:n) / m

end
