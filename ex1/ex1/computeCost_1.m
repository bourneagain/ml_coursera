function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 99999;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

theta_0 = theta(1);
theta_1 = theta(2);

iter = 1000;
alpha = 0.01;

for i = 1:iter
  sumpart1 = 0;
  for j = 1:m
    h_theta = (theta_0 + theta_1 * X(j,2));
    sumpart1 = sumpart1 + (h_theta - y(j)) ;
  endfor
  temp_theta_0 =  theta_0 - alpha * (1/m) * sumpart1;
  % disp(temp_theta_0)

  sumpart2 = 0;
  for j = 1:m
    h_theta = (theta_0 + theta_1 * X(j,2));
    sumpart2 = sumpart2 + (h_theta - y(j)) * X(j,2);
  endfor
  temp_theta_1 = theta_1 - alpha  * (1/m) * sumpart2;
  % disp(temp_theta_1)
  % pause;

  % temp_theta_matrix = [temp_theta_0; temp_theta_1];
  % disp(temp_theta_matrix);
  sum_m = 0;
  for j = 1:m
    h_theta = temp_theta_0 + temp_theta_1 * X(j,2) ;
    sum_m = sum_m + (h_theta - y(j)) ^ 2 ;
  endfor
  
  % disp(sum_m);
  temp_j = (1/2*m) * sum_m; 

  disp(J),   disp(i), disp(temp_theta_0) , disp(temp_theta_1);

  % pause;
  if temp_j < J
    J = temp_j;
  end
  theta_0 = temp_theta_0;
  theta_1 = temp_theta_1;
endfor

disp(J)
pause;

% =========================================================================

end
