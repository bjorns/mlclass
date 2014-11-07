load('ex4weights.mat');
load('ex4data1.mat');

m = size(X,1);
num_labels = max(y);

Y = zeros(m, num_labels);
idx = sub2ind(size(Y), 1:m, y');
Y(idx) = 1;

lambda = 0;
