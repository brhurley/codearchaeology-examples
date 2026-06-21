% functions.m — defining, calling, and returning from functions

% Call a function that returns a single value
area = rectangle_area(4, 6);
fprintf('Area = %d\n', area);

% Capture multiple return values in one call
[s, p] = sum_and_product(4, 5);
fprintf('Sum = %d, Product = %d\n', s, p);

% Rely on a default argument (handled with nargin)
disp(power_of(3))       % exponent defaults to 2
disp(power_of(3, 3))    % exponent supplied explicitly

% Recursion: the classic factorial
fprintf('5! = %d\n', fact(5));

% --- Local function definitions (must follow the script code) ---

function a = rectangle_area(width, height)
    a = width * height;
end

function [s, p] = sum_and_product(a, b)
    s = a + b;        % first output
    p = a * b;        % second output
end

function result = power_of(base, exponent)
    if nargin < 2
        exponent = 2;     % default used when only one argument is passed
    end
    result = base ^ exponent;
end

function n = fact(k)
    if k <= 1
        n = 1;
    else
        n = k * fact(k - 1);   % function calls itself
    end
end
