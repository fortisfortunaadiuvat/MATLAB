function [w] = convolution(u,v)

switch nargin
    case 2
        %find length of each vector
        m=length(u);
        n=length(v);
        %We don't use if-else statement , cuz we don't know which vector 
        %length is bigger.And use another vector(U and V) to 
        %equalize length .
        U=[u,zeros(1,n)];
        V=[v,zeros(1,m)];
        %initialaze w .do not allow to change on every loop.
        w=zeros(1,m+n-1);

        %Use for loop to 
        for i=1:n+m-1
            w(i)=0;
            for j=1:m 
                if(i-j+1>0)
                    %sum of w(i) for every loop
                    w(i)=w(i)+U(j)*V(i-j+1);
                else
                end
            end
        end 

        disp(w);
        
    case 1 
        disp("Not enough input arguments");
        disp("if ~isvactor(u) || ~isvector(v)")
    case 0
        disp("Not enough input arguments");
        disp("if ~isvactor(u) || ~isvector(v)")
    otherwise
        disp("Shape must be 'full','same' or 'valid'");
        disp("if ~isvactor(u) || ~isvector(v)")

end