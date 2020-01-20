load pluginfile.txt
position=pluginfile(:,1);
time=pluginfile(:,2);
plot(position,time)

[x,y] = meshgrid(time,position);
z=x+y;
mesh(z)

xlabel('Time (sn)');
ylabel('position (m)');
zlabel('velocity (v)');
title('3D Acc Graph');