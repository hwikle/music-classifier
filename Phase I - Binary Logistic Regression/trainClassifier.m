% Filename: trainClassifier.m % Author: Hank Wikle
% Last modified 22 April 2018
% Trains the logistic regression classifier and writes the parameters theta to a file

function trainClassifier(fname)
    % fname is the file of training data, with each row constituting an example and the last element of each row representing the label for that example
    MAX_ITERATIONS = 100;
    OUT_FNAME = 'theta.txt';

    [X, y] = constructMatrix(fname);
    theta = getParams(X, y, MAX_ITERATIONS);

    fid = fopen(OUT_FNAME, 'w');

    for i=1:size(X, 1)
        fprintf(fid, '%f\t', theta(i,:));
        fprintf('\n');
    end;

    fclose(fid);

end;
