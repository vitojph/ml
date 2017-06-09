function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 

% compute the hypothesis, by multiplying X and theta in 
% the proper order so that the inner dimensions match
%h = X * theta;

% compute the error, i.e. the difference between the hypothesis and y
%e = h - y;
%e_sqr = e .^ 2;

% compute the sum of the e_sqr vector, and scale the result
%J = 1/(2*m) * sum(e_sqr);


% vectorized version of the entire process
J = 1/(2*m) * ((X * theta - y)' * (X * theta - y));


% =========================================================================

end
