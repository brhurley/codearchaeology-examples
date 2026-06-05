% Array-based control flow: logical indexing replaces loops
v = [4 -2 7 0 -5 9 -1];

% Select positive values without writing a loop
positives = v(v > 0);
fprintf('Positive values: %s\n', mat2str(positives));

% Replace every negative value with zero in one statement
v(v < 0) = 0;
fprintf('After clamping negatives to zero: %s\n', mat2str(v));

% Vectorized sign computation (no loop needed)
fprintf('Signs: %s\n', mat2str(sign(v)));
