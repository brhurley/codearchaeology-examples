% Assignment is plain =
x = 5;

% MATLAB has NO compound assignment operators (no +=, -=, etc.)
x = x + 1;            % You must write it out
fprintf('x = %d\n', x);

% String concatenation: brackets join character arrays
first = 'Hello';
last  = 'MATLAB';
greeting = [first, ', ', last, '!'];
disp(greeting)

% Range operator creates vectors: start:step:stop
nums   = 1:5;          % 1 2 3 4 5
evens  = 0:2:10;       % 0 2 4 6 8 10
rev    = 10:-1:6;      % 10 9 8 7 6
disp(nums)
disp(evens)
disp(rev)

% Operator precedence: ^ before * before + ; parentheses always clarify
result = 2 + 3 * 4 ^ 2;   % 2 + 3 * 16 = 50
fprintf('2 + 3 * 4^2 = %d\n', result);

% Transpose operators
M = [1 2 3];
disp('Transpose M'':')
disp(M')               % .' is plain transpose, ' is conjugate transpose
