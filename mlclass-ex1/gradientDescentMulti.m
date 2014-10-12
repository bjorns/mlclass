function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

    h = X * theta;

    for i = 1:size(X, 2)
        theta(i) = theta(i) - alpha * sum((h-y).*X(:,i))/m;
    end
end

end
