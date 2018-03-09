% Filename: cost.m
% Author: Hank Wikle
% Last Modified 9 March 2018
% Cost function for logistic regression. Computes both cost and gradient.

function [J, grad] = cost(theta, X, y)
% Computes the cost function and gradient for logistic regression.
% ARGUMENTS: theta - parameter vector (size n by 1)
%	     X     - design matrix of training examples (size m by n)
%            y     - vector of ground truth for training examples (size m by 1)
% RETURNS: J - cost associated with the input parameters (theta)
%	   grad - gradient of the cost function at the point specified by the given parameters. vector (size n by 1)

% Number of training examples
m = length(y);

% Hypothesis Function
h = sigmoid(X * theta);

J = -1 / m * (log(h)' * y + log(ones(1, m) - h') * (ones(m, 1) - y));
grad = 1 / m * X' * (h - y); 
