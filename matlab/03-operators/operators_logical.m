% Logical operators
a = true;
b = false;

% Short-circuit (scalars only): && and ||
fprintf('a && b = %d\n', a && b);
fprintf('a || b = %d\n', a || b);
fprintf('~a     = %d\n', ~a);     % Logical NOT

% Element-wise logical on arrays
v1 = [1 0 1 0];
v2 = [1 1 0 0];
disp('v1 & v2:'); disp(v1 & v2)
disp('v1 | v2:'); disp(v1 | v2)
disp('xor(v1,v2):'); disp(xor(v1, v2))

% Short-circuit prevents evaluating the right side
x = 0;
if x ~= 0 && (10 / x) > 1
    disp('safe division')
else
    disp('skipped division by zero')
end
