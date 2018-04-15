function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

theta_0 = theta(1);
theta_1 = theta(2);

for i = 1:num_iters    
    sum_m = 0;
    for j = 1:m
        h_theta = theta_0 + theta_1 * X(j,2) ;
        sum_m = sum_m + (h_theta - y(j)) ^ 2 ;
    endfor

    temp_j = sum_m / (2*m); 

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
    
    theta_0 = temp_theta_0;
    theta_1 = temp_theta_1;
    

    % fprintf('%d =>TEMPJ: %f, t0: %f, t1 = %f \n' , i, temp_j, theta_0, theta_1)
    % fprintf("  = tempT0 : tempT1 => %f : %f \n" , temp_theta_0, temp_theta_1)
    % pause
    theta  = [theta_0; theta_1];
    J_history(i,1) = temp_j ;
    % disp(J_history)
endfor