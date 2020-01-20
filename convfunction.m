function [w] = convfunction(u,v)

%find length of each vector
k=length(u);
l=length(v);
%I don't use if-else statement , cuz we don't know which vector length is
%bigger.And use another vector(U and V) to equalize length .
U=[u,zeros(1,l)];
V=[v,zeros(1,k)]; 
w=zeros(1,k+l-1);

for i=1:k+l-1
    w(i)=0;
    for j=1:l
       if(i-j+1>0)
           w(i) = w(i)+U(j)*V(i-j+1);
       else
       end
    end
end

disp(w);

end