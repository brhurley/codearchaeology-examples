% switch / case (works with numbers AND strings)
language = 'matlab';

switch language
    case 'matlab'
        disp('Matrix Laboratory')
    case {'octave', 'scilab'}
        disp('Open-source alternative')
    otherwise
        disp('Unknown language')
end
