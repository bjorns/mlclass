function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

  % Initialize some useful values
  m = length(y); % number of training examples
  n = length(theta); % number of features
  h = sigmoid(X * theta); 
  
  partial = -y .* log(h) - (1 .- y) .* log(1 .- h);
  J = (1/m) * sum(partial);
  

  grad = zeros(size(theta));
  for i = 1:n;
    grad(i) = (1/m) .* sum((h .- y) .* X(:,i));
  end
  
end




