% Filename: getParams.m
% Author: Hank Wikle
% Last modified 22 April 2018
% Performs gradient descent on the training set X with labels y to determine the optimum parameters theta for logistic regression

function theta = getParams(X, y, max_iters)

    num_features = size(X, 2);
    initial_theta = zeros(num_features, 1);

    options = optimset('GradObj', 'on', 'MaxIter', max_iters);
    [theta, J] = fminunc(@(t)cost(t, X, y), initial_theta, options);

end;
