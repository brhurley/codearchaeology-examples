% for loop over a numeric range
total = 0;
for k = 1:5
    total = total + k;
end
fprintf('Sum of 1 to 5 = %d\n', total);

% for loop over the elements of a cell array
fruits = {'apple', 'banana', 'cherry'};
for i = 1:numel(fruits)
    fprintf('Fruit %d: %s\n', i, fruits{i});
end

% while loop with continue (skip) and break (stop)
n = 0;
while n < 10
    n = n + 1;
    if mod(n, 2) == 0
        continue;   % skip even numbers
    end
    if n > 7
        break;      % stop once we pass 7
    end
    fprintf('Odd: %d\n', n);
end
