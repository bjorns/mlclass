data = load('ex1data2.txt');
n = length(data(1,:));
m = length(data);
X = [ones(m, 1), data(:,1:n-1)];
y = data(:, n);
