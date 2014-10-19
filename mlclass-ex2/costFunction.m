function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

  % Initialize some useful values
  m = length(y); % number of training examples
  n = length(theta) % number of features
  h = sigmoid(theta' * X);
 
  % You need to return the following variables correctly 
  J = 0;
  
  for j = 1:n
    partial = -y .* log(h(:,j)) - (1 .- y) .* log(1 .- h(:,j));
    J = (1/m) * sum(partial)
  end
  J = J / m;

  grad = zeros(size(theta));
end




