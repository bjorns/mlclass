function [J, grad] = costFunctionReg(theta, X, y, lambda)

  m = length(y); % number of training examples
  n = length(theta); % number of features
  h = sigmoid(X * theta); 

  partial = -y .* log(h) - (1 .- y) .* log(1 .- h);
  J = (1/m) * sum(partial) + (lambda/(2*m)) * sum((theta(2:n) .^ 2));
  

  grad = zeros(size(theta));
  grad(1) = (1/m) .* sum((h .- y) .* X(:,1));
  for i = 2:n;
    grad(i) = (1/m) .* sum((h .- y) .* X(:,i)) + lambda * theta(i) / m;
  end
end
