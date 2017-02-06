correct_output = zeros(size(y,1), num_labels);
 for i = 1:size(y,1)
     correct_output(i, y(i)) = 1;
 end