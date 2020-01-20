function  elipsgraph(x0,y0,a,b)

z=linspace(0,2*pi);
X=a*cos(z)+x0;
Y=b*sin(z)+y0;
    if(a>b)
        w=atan2(0,2*a);
        x1=x0+a/2;
        y1=y0;
        x2=x0-a/2;
        y2=y0;
    else
        w=atan(2*b,0);
        x1=x0;
        y1=y0+b/2;
        x2=0;
        y2=y0-b/2;
    end

x=(x1+x2)/2 + X*cos(w) + Y*sin(w);
y=(y1+y2)/2 + X*sin(w) + Y*cos(w);

plot (x,y);
axis equal

end

