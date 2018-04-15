function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
sumpart = 0;
theta_0 = theta(1);
theta_1 = theta(2);

for i = 1:m
  h_theta = theta_0 + theta_1 * X(i,2);
  sumpart = sumpart + (h_theta - y(i)) * (h_theta - y(i));
  % fprintf("%d ===> %f : %f = %f\n " ,i, X(i,2), y(i), sumpart)
endfor

J = sumpart/ (2*m);

% =========================================================================

end
