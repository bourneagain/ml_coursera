function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
sumpart = 0
for i = 1:m
  h_theta = theta_0 + theta_1 * X(i,2)
  sumpart = sumpart + (h_theta - y(i)) ^ 2
endfor

J = (1/2*m) * sumpart
disp(J)
pause;



% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% theta_0 = theta(1);
% theta_1 = theta(2);
% 
% iter = 10000;
% alpha = 0.01;
% 
% for i = 1:iter
%   sum_m = 0;
%   for j = 1:m
%     h_theta = theta_0 + theta_1 * X(j,2) ;
%     sum_m = sum_m + (h_theta - y(j)) ^ 2 ;
%   endfor
% 
%   temp_j = (1/2*m) * sum_m; 
% 
%   % fprintf('%d =>TEMPJ : t1: t2 = %d %f %f \n' , i, temp_j, theta_0, theta_1)
%   % pause;
% 
%   sumpart1 = 0;
%   for j = 1:m
%     h_theta = (theta_0 + theta_1 * X(j,2));
%     sumpart1 = sumpart1 + (h_theta - y(j)) ;
%   endfor
%   temp_theta_0 =  theta_0 - alpha * (1/m) * sumpart1;
%   % disp(temp_theta_0)

%  sumpart2 = 0;
%  for j = 1:m
%    h_theta = (theta_0 + theta_1 * X(j,2));
%    sumpart2 = sumpart2 + (h_theta - y(j)) * X(j,2);
%  endfor
%  temp_theta_1 = theta_1 - alpha  * (1/m) * sumpart2;
%  % disp(temp_theta_1)%

%  % fprintf("  = tempT0 : tempT1 => %f : %f \n" , temp_theta_0, temp_theta_1)
%  theta_0 = temp_theta_0;
%  theta_1 = temp_theta_1;
%  ii = mod(i,1000);
%  if ii == 0
%    fprintf('%d =>TEMPJ : t1: t2 = %d %f %f \n' , i, temp_j, theta_0, theta_1)
%    fprintf("  = tempT0 : tempT1 => %f : %f \n" , temp_theta_0, temp_theta_1)
%    pause;
%  end
% endfor

disp(J)
pause;

% =========================================================================

end
