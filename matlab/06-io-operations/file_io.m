% Writing to and reading from a text file

% --- Writing ---
fid = fopen('greetings.txt', 'w');       % open for writing (truncates)
fprintf(fid, 'Hello from MATLAB\n');
fprintf(fid, 'Line number %d\n', 2);
fprintf(fid, 'Pi is approximately %.4f\n', pi);
fclose(fid);                             % always close the handle

disp('File written. Reading it back line by line:');

% --- Reading line by line ---
fid = fopen('greetings.txt', 'r');       % open for reading
line = fgetl(fid);                       % read the first line
while ischar(line)                       % fgetl returns -1 at end of file
    fprintf('  %s\n', line);
    line = fgetl(fid);                   % advance to the next line
end
fclose(fid);

% --- Reading the whole file at once ---
contents = fileread('greetings.txt');
fprintf('Total characters read: %d\n', length(contents));
