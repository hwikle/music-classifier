% Filename: predict.m
% Author: Hank Wikle
% Last Modified 22 April 2018
% Performs binary logistic regression based on learned parameters theta

function predictions = predict(theta, X)

    THRESHOLD = 0.5;

    m = size(X, 1); % Number of training examples
    predictions = zeros(m, 1);

    hypothesis = sigmoid(X * theta);
    predictions = (hypothesis >= THRESHOLD);

end;
