% Comparison operators produce logical arrays
x = [1 2 3 4 5];
y = [5 4 3 2 1];

disp('x == y:'); disp(x == y)
disp('x ~= y:'); disp(x ~= y)   % "not equal" uses ~= , not !=
disp('x <  y:'); disp(x <  y)
disp('x >= y:'); disp(x >= y)

% Use the logical result as an index (logical indexing)
data = [10 -3 7 -8 4 -1];
positives = data(data > 0);
fprintf('Positive values: ');
fprintf('%d ', positives);
fprintf('\n');
