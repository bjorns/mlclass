data = load('ex2data1.txt');
m = length(data(:,1));
X = [ones(m, 1), data(:,1:2)];
y = data(:,3);
theta = [0;0;0];
