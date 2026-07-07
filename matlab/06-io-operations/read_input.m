% Reading input from the user with input()

radius = input('Enter a radius: ');      % reads and evaluates a number
area = pi * radius^2;
fprintf('A circle with radius %g has area %.4f\n', radius, area);

name = input('Enter your name: ', 's');  % the 's' option reads text
fprintf('Hello, %s!\n', name);
