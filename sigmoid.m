% Filename: sigmoid.m
% Author: Hank Wikle
% Last Modified 9 March 2018
% Computes the sigmoid function for use in logistic regression

function g = sigmoid(z)
% Computes the sigmoid function (logistic function)
% ARGUMENTS: z - a vector or matrix of any size, containing real numbers; or a real number
% RETURNS: g - a vector, matrix, or real number of the same size as z containing real numbers between 0 and 1 (exclusive)

g = 1 ./ (1 + exp(-1 * z));
