% Reading and writing numeric matrices

% Create a 2x3 matrix
M = [1 2 3; 4 5 6];

% Write it as comma-delimited text (dlmwrite defaults to commas)
dlmwrite('matrix.csv', M);

% Read the delimited file straight back into a variable
N = dlmread('matrix.csv');

disp('Matrix read back from matrix.csv:');
disp(N);

% Confirm the data survived the round trip
fprintf('Sum of all elements: %d\n', sum(N(:)));

% save/load use MATLAB's binary .mat format and preserve variables exactly
save('workspace.mat', 'M');
clear M;                                 % remove M from the workspace
load('workspace.mat');                   % bring it back from disk
fprintf('Recovered M(2,3) = %d\n', M(2,3));
