% Variable assignment - no keywords needed
x = 42;
pi_approx = 3.14159;
name = 'MATLAB';
is_ready = true;

% Check types with class()
fprintf('x: %d (%s)\n', x, class(x));
fprintf('pi_approx: %.5f (%s)\n', pi_approx, class(pi_approx));
fprintf('name: %s (%s)\n', name, class(name));
fprintf('is_ready: %d (%s)\n', is_ready, class(is_ready));

fprintf('\n');

% Numeric types - doubles are the default
a = 10;                 % double (default for all numeric literals)
b = int32(10);          % explicit 32-bit integer
c = uint8(255);         % unsigned 8-bit integer
d = single(3.14);       % 32-bit float

fprintf('=== Numeric Types ===\n');
fprintf('a = %d (%s) - default is double\n', a, class(a));
fprintf('b = %d (%s)\n', b, class(b));
fprintf('c = %d (%s)\n', c, class(c));
fprintf('d = %.2f (%s)\n', d, class(d));

fprintf('\n');

% Special numeric values
fprintf('=== Special Values ===\n');
fprintf('Infinity: %f\n', Inf);
fprintf('Negative infinity: %f\n', -Inf);
fprintf('Not a number: %f\n', NaN);
fprintf('Machine epsilon: %.15e\n', eps);
fprintf('Largest double: %.6e\n', realmax);
fprintf('Smallest positive double: %.6e\n', realmin);

fprintf('\n');

% Complex numbers - built-in support
z1 = 3 + 4i;
z2 = complex(1, -2);

fprintf('=== Complex Numbers ===\n');
fprintf('z1 = %s\n', num2str(z1));
fprintf('z2 = %s\n', num2str(z2));
fprintf('Real part of z1: %.1f\n', real(z1));
fprintf('Imaginary part of z1: %.1f\n', imag(z1));
fprintf('Magnitude of z1: %.1f\n', abs(z1));

fprintf('\n');

% Logical (boolean) values
fprintf('=== Logical Values ===\n');
flag1 = true;
flag2 = false;
flag3 = logical(1);
fprintf('true: %d (%s)\n', flag1, class(flag1));
fprintf('false: %d (%s)\n', flag2, class(flag2));
fprintf('logical(1): %d (%s)\n', flag3, class(flag3));
fprintf('5 > 3 produces: %d (%s)\n', 5 > 3, class(5 > 3));
