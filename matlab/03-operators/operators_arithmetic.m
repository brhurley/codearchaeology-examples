% Arithmetic operators in MATLAB
a = 10;
b = 3;

fprintf('a + b  = %d\n', a + b);    % Addition
fprintf('a - b  = %d\n', a - b);    % Subtraction
fprintf('a * b  = %d\n', a * b);    % Multiplication
fprintf('a / b  = %.4f\n', a / b);  % Right division
fprintf('a \\ b  = %.4f\n', a \ b); % Left division (b / a)
fprintf('a ^ b  = %d\n', a ^ b);    % Exponentiation
fprintf('mod    = %d\n', mod(a, b));% Modulo (function, not operator)

% Negation (unary minus)
disp(-a)
