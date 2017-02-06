function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1); %m=5000
num_labels = size(Theta2, 1); %num_labels=10

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

x=[ones(size(X,1),1) X];%5000x401
p_ini=sigmoid(x * Theta1');% 5000x25
p_ones=[ones(size(p_ini,1),1) p_ini];%5000x26
x_final=sigmoid(p_ones * Theta2');
[val,p] = max(x_final, [],2);




    
%5000x401
%25x401
%5000x25
%add ones
%5000x26
%10x26
%5000x10








% =========================================================================


end
