function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% add ones to the X data matrix
X = [ones(m, 1) X];

% loop over X
for i = 1:m
    % a1 has to be a 400x1 vector 
    a1 = X(i, :)';
    % the hidden layer a2 has a column of 1s and is computed using Theta1
    a2 = [1; sigmoid(Theta1 * a1)];
    % the output layer a3 is computed using Theta2 
    a3 = sigmoid(Theta2 * a2);
    % get the max value of idx: that's the predicted class
    [m, idx] = max(a3');
    p(i) = idx;
end;

% =========================================================================

end
