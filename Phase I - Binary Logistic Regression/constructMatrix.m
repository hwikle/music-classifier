% Filename: constructMatrix.m
% Author: Hank Wikle
% Last modified 22 April 2018
% Constructs a design matrix X and label vector y from a text file containing training examples. Assumes each line is a single example, with the last value in the line representing the label for that example

function [X, y] = constructMatrix(fname)

    data = load(fname);
    [num_examples, num_features] = size(data);
    num_features -= 1; % last column is label

    X = data(:,1:num_features);
    y = data(:,num_features + 1);

end;
