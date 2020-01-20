function vectorclock

V=input('Enter your vector: ');
U=[0 V(1)];
W=[0 V(2)];
plot(U,W,'-r');
hold on
z=linspace(0,2*pi);
r=sqrt((V(1).^2)+V(2).^2);
X=r*cos(z);
Y=r*sin(z);
plot(X,Y,'-b'); 
grid on;
xlim([-10 10]);
ylim([-10 10]);
xlabel('x');
ylabel('y');
hold on

B=input('Please input your angle: ');
f=B/360;
sec=B*f;

    for i=1:sec
        Z=[r*cos((atan(V(2)/V(1)))+((((360*i)/B)*pi)/180)) 
            r*sin((atan(V(2)/V(1)))+((((360*i)/B)*pi)/180))];
        Q=[0 Z(1)];
        T=[0 Z(2)];
        datap=plot(Q,T,'-g');
        pause(1);
            if i~=sec
                delete(datap)
            end
    end
end

