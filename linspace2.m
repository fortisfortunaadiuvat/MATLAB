function [outputArg1] = linspace2(start,stop,numberofElements)

switch nargin
    case 3 
        outputArg1=start:(stop-start)/(numberofElements-1):stop;
    case 2
        outputArg1=start:(stop-start)/99:stop; 
    case 1 
        disp('Error:Invalid argument');
    otherwise
        outputArg1=0; 
end

end