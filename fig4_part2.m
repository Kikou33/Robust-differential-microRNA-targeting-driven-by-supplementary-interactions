%Fig.4H, Fig.S3C and Fig.S4B for Ago2-v2 under Situation-1
At = 1;Tsupp=1;Kdseed=0.1219;Kdsupp=0.0064;
[Cseed,Csupp] = curve_inter2(At,Tsupp,Kdseed,Kdsupp);

figure(11)
hold on;
plot(((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'color',[0.07 0.62 1.00]);
plot(((0:0.1:150)),Csupp./Tsupp,'r');
legend('target-1','target-2');
title('Fig.4H');
xlabel('[T1t]/[T2t]');
ylabel('Binding Fraction');
hold off;

figure(12)
plot(((0:0.1:150)),(Csupp./Tsupp)./(Cseed./((0:0.1:150)*Tsupp)));
title('Fig.S3C');
xlabel('[T1t]/[T2t]');
ylabel('Fold difference between Binding Fraction');

figure(13)
hold on;
plot(log2((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'color',[0.07 0.62 1.00]);
plot(log2((0:0.1:150)),Csupp./Tsupp,'r');
legend('target-1','target-2');
title('Fig.S4B');
xlabel('log2([T1t]/[T2t])');
ylabel('Binding Fraction');
data = readtable('S1_data_v2_triplicates.xlsx');
array = table2array(data);
scatter(log2(array(:,1)),array(:,2),'rs');
scatter(log2(array(:,1)),array(:,3),'rs');
scatter(log2(array(:,1)),array(:,4),'rs');
s=scatter(log2(array(:,1)),array(:,5));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)),array(:,6));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)),array(:,7));
s.MarkerEdgeColor = [0.07 0.62 1.00];
hold off;

%Fig.4I, Fig.S3D and Fig.S4C for Ago2-v2 under Situation-2
At = 1;Tsupp=0.1;Kdseed=0.1219;Kdsupp=0.0064;
[Cseed,Csupp] = curve_inter2(At,Tsupp,Kdseed,Kdsupp);

figure(14)
hold on;
plot(((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'color',[0.07 0.62 1.00]);
plot(((0:0.1:150)),Csupp./Tsupp,'r');
legend('target-1','target-2');
title('Fig.4I');
xlabel('[T1t]/[T2t]');
ylabel('Binding Fraction');
hold off;

figure(15)
plot(((0:0.1:150)),(Csupp./Tsupp)./(Cseed./((0:0.1:150)*Tsupp)));
title('Fig.S3D');
xlabel('[T1t]/[T2t]');
ylabel('Fold difference between Binding Fraction');

figure(16)
hold on;
plot(log2((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'color',[0.07 0.62 1.00]);
plot(log2((0:0.1:150)),Csupp./Tsupp,'r');
legend('target-1','target-2');
title('Fig.S3C');
xlabel('log2([T1t]/[T2t])');
ylabel('Binding Fraction');
data = readtable('S2_data_v2_triplicates.xlsx');
array = table2array(data);
scatter(log2(array(:,1)./Tsupp),array(:,2),'rs');
scatter(log2(array(:,1)./Tsupp),array(:,3),'rs');
scatter(log2(array(:,1)./Tsupp),array(:,4),'rs');
s=scatter(log2(array(:,1)./Tsupp),array(:,5));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)./Tsupp),array(:,6));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)./Tsupp),array(:,7));
s.MarkerEdgeColor = [0.07 0.62 1.00];
hold off;


