% Matrix vs element-wise operations
A = [1 2; 3 4];
B = [5 6; 7 8];

disp('Matrix multiplication A * B:')
disp(A * B)

disp('Element-wise multiplication A .* B:')
disp(A .* B)

disp('Matrix power A^2 (equals A * A):')
disp(A^2)

disp('Element-wise power A.^2 (each element squared):')
disp(A.^2)

disp('Element-wise division A ./ B:')
disp(A ./ B)
