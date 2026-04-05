% Character arrays vs strings
fprintf('=== Character Arrays ===\n');
char_arr = 'Hello';
fprintf('char_arr: %s (%s, size: %dx%d)\n', char_arr, class(char_arr), size(char_arr, 1), size(char_arr, 2));
fprintf('char_arr(1): %s (ASCII: %d)\n', char_arr(1), char_arr(1));

fprintf('\n');

% Matrices - the core data structure
fprintf('=== Matrices ===\n');
row_vec = [1, 2, 3, 4, 5];
col_vec = [1; 2; 3; 4; 5];
matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];

fprintf('Row vector: ');
fprintf('%d ', row_vec);
fprintf('(size: %dx%d)\n', size(row_vec, 1), size(row_vec, 2));

fprintf('Column vector: ');
fprintf('%d ', col_vec);
fprintf('(size: %dx%d)\n', size(col_vec, 1), size(col_vec, 2));

fprintf('Matrix (3x3):\n');
disp(matrix);

% A scalar is just a 1x1 matrix
scalar = 42;
fprintf('Scalar %d has size: %dx%d\n', scalar, size(scalar, 1), size(scalar, 2));

fprintf('\n');

% Cell arrays - heterogeneous containers
fprintf('=== Cell Arrays ===\n');
mixed = {42, 'hello', 3.14, true, [1, 2, 3]};
fprintf('Cell array contents:\n');
for i = 1:length(mixed)
    val = mixed{i};
    fprintf('  mixed{%d}: %s (%s)\n', i, num2str(val), class(val));
end

fprintf('\n');

% Structs - named fields
fprintf('=== Structs ===\n');
point.x = 3.0;
point.y = 4.0;
point.label = 'origin';
fprintf('point.x = %.1f\n', point.x);
fprintf('point.y = %.1f\n', point.y);
fprintf('point.label = %s\n', point.label);
fprintf('Fields: ');
fields = fieldnames(point);
fprintf('%s ', fields{:});
fprintf('\n');

fprintf('\n');

% Type conversions
fprintf('=== Type Conversions ===\n');

% Numeric conversions
int_val = int32(3.7);
fprintf('int32(3.7) = %d (rounds to nearest)\n', int_val);

double_val = double(int32(42));
fprintf('double(int32(42)) = %.1f\n', double_val);

% String to number
num_from_str = str2double('123.45');
fprintf('str2double(''123.45'') = %.2f (%s)\n', num_from_str, class(num_from_str));

% Number to string
str_from_num = num2str(42);
fprintf('num2str(42) = ''%s'' (%s)\n', str_from_num, class(str_from_num));

% Logical conversions
fprintf('logical(0) = %d, logical(1) = %d\n', logical(0), logical(1));
fprintf('double(true) = %.1f\n', double(true));

fprintf('\n');

% Constants - MATLAB uses conventions, not a const keyword
fprintf('=== Constants (by Convention) ===\n');
MAX_ITERATIONS = 1000;
GRAVITY = 9.81;
fprintf('MAX_ITERATIONS = %d\n', MAX_ITERATIONS);
fprintf('GRAVITY = %.2f\n', GRAVITY);
fprintf('Built-in pi = %.10f\n', pi);
fprintf('Built-in i (imaginary unit) = %s\n', num2str(1i));

fprintf('\n');

% Checking for empty and special values
fprintf('=== Empty and Special Values ===\n');
empty_arr = [];
fprintf('Empty array size: %dx%d\n', size(empty_arr, 1), size(empty_arr, 2));
fprintf('isempty([]): %d\n', isempty(empty_arr));
fprintf('isnan(NaN): %d\n', isnan(NaN));
fprintf('isinf(Inf): %d\n', isinf(Inf));
fprintf('isnumeric(42): %d\n', isnumeric(42));
fprintf('ischar(''hello''): %d\n', ischar('hello'));
fprintf('islogical(true): %d\n', islogical(true));
