% Formatted console output with fprintf and disp

% Integer and floating-point conversion specifiers
fprintf('Integer: %d\n', 42);
fprintf('Float (2 decimals): %.2f\n', pi);
fprintf('Scientific: %e\n', 12345.678);
fprintf('Padded to width 8: %8.3f\n', pi);

% Strings use %s
name = 'MATLAB';
fprintf('Language: %s\n', name);

% Multiple values are consumed left to right
fprintf('%s first appeared in %d\n', name, 1984);

% fprintf reuses the format string across a whole matrix
% (values are consumed in column-major order)
squares = [2 4 6; 4 16 36];
fprintf('%d squared is %d\n', squares);

% disp is best for quick, unformatted inspection
disp('--- disp examples ---');
disp(42);
disp([1 2 3]);

% num2str converts a number into text you can concatenate
label = ['pi = ', num2str(pi)];
disp(label);
