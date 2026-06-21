% anonymous.m — anonymous functions and function handles

% An anonymous function stored in a handle
% Using .^ (element-wise power) so it works on scalars AND arrays
square = @(x) x.^2;
disp(square(5))

% Anonymous functions capture variables from the surrounding scope
factor = 10;
scale = @(x) x * factor;       % 'factor' is frozen into the handle
disp(scale(7))

% Pass a function handle into another function
disp(apply_twice(square, 3))

% Map a handle over an array with arrayfun, then print the result
values = [1 2 3 4];
squares = arrayfun(square, values);
fprintf('%d ', squares);
fprintf('\n');

% --- Local function definition ---

function y = apply_twice(f, x)
    y = f(f(x));      % f is itself a function handle
end
