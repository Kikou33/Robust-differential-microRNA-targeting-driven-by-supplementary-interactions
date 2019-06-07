A=2;
T1=10;
T2=10;
k1=6.587;
k2=0.0079;
k3=6.587;
k4=0.521;
dC=@(t,C)[k1*(A-C(1)-C(2)).*(T1-C(1))-k2*C(1);k3*(A-C(1)-C(2)).*(T2-C(2))-k4*C(2)];
[t,y] = ode45(dC,[0 120],[0;0]);

figure(1);
plot(t,(y(:,1)./T1),'color',[0.07 0.62 1.00]);
hold on;
plot(t,(y(:,2)./T2),'r')
title('Fig.3:time-course Ago2-v1 binding simulation');
xlabel('Time/min');ylabel('binding fraction');
legend('target-1','target-2');
data = readtable('v1_time_course_data.xlsx');
array = table2array(data);
s=scatter(array(:,1),array(:,2));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(array(:,1),array(:,3));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(array(:,1),array(:,4));
s.MarkerEdgeColor = [0.07 0.62 1.00];
scatter(array(:,1),array(:,5),'rs');
scatter(array(:,1),array(:,6),'rs');
scatter(array(:,1),array(:,7),'rs');
hold off;