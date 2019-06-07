%Fig.4A
At = 1;Tseed=1;Tsupp=1;Kdseed=0.079;Kdsupp=0.0012;
[cseed,csupp,Cseed,Csupp] = sequester(At,Tseed,Tsupp,Kdseed,Kdsupp);
figure(2);
plot(0:0.01:At,Csupp,'color',[0.07 0.62 1.00]);
xlabel('complex-2/nM');
ylabel('complex-1/nM');
hold on;
plot(Cseed,0:0.01:At,'r');
legend('E3','E4');
plot(cseed,csupp,'o');
title('Fig.4A');
hold off;

%Fig.4B,C Fig.S3A and Fig.5B for Ago2-v1 under Situation-1
At = 1;Tsupp=1;Kdseed=0.079;Kdsupp=0.0012;
[Cseed,Csupp] = curve_inter2(At,Tsupp,Kdseed,Kdsupp);
figure(3)
hold on;
plot(((0:0.1:150)),Csupp,'color',[0.07 0.62 1.00]);
plot(((0:0.1:150)),Cseed,'r');
legend('target-1','target-2');
title('Fig.4B');
xlabel('[T2t]/[T1t]');
ylabel('Complex/nM');
hold off;

figure(4)
hold on;
plot(((0:0.1:150)),Csupp./Tsupp,'color',[0.07 0.62 1.00]);
plot(((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'r');
legend('target-1','target-2');
title('Fig.4C');
xlabel('[T2t]/[T1t]');
ylabel('Binding Fraction');
hold off;

figure(5)
plot(((0:0.1:150)),(Csupp./Tsupp)./(Cseed./((0:0.1:150)*Tsupp)));
title('Fig.S3A');
xlabel('[T2t]/[T1t]');
ylabel('Fold difference between Binding Fraction');

figure(6)
hold on;
plot(log2((0:0.1:150)),Csupp./Tsupp,'color',[0.07 0.62 1.00]);
plot(log2((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'r');
legend('target-1','target-2');
title('Fig.5B');
xlabel('log2([T2t]/[T1t])');
ylabel('Binding Fraction');
data = readtable('S1_data_v1_triplicates.xlsx');
array = table2array(data);
s=scatter(log2(array(:,1)),array(:,2));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)),array(:,3));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)),array(:,4));
s.MarkerEdgeColor = [0.07 0.62 1.00];
scatter(log2(array(:,1)),array(:,5),'rs');
scatter(log2(array(:,1)),array(:,6),'rs');
scatter(log2(array(:,1)),array(:,7),'rs');
hold off;

%Fig.4D,E, Fig.S3B and Fig.5C for Ago2-v1 under Situation-2
At = 1;Tsupp=0.1;Kdseed=0.079;Kdsupp=0.0012;
[Cseed,Csupp] = curve_inter2(At,Tsupp,Kdseed,Kdsupp);
figure(7)
hold on;
plot(((0:0.1:150)),Csupp,'color',[0.07 0.62 1.00]);
plot(((0:0.1:150)),Cseed,'r');
legend('target-1','target-2');
title('Fig.4E');
xlabel('[T2t]/[T1t]');
ylabel('Complex/nM');
hold off;

figure(8)
hold on;
plot(((0:0.1:150)),Csupp./Tsupp,'color',[0.07 0.62 1.00]);
plot(((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'r');
legend('target-1','target-2');
title('Fig.4F');
xlabel('[T2t]/[T1t]');
ylabel('Binding Fraction');
hold off;

figure(9)
plot(((0:0.1:150)),(Csupp./Tsupp)./(Cseed./((0:0.1:150)*Tsupp)));
title('Fig.S3B');
xlabel('[T2t]/[T1t]');
ylabel('Fold difference between Binding Fraction');

figure(10)
hold on;
plot(log2((0:0.1:150)),Csupp./Tsupp,'color',[0.07 0.62 1.00]);
plot(log2((0:0.1:150)),Cseed./((0:0.1:150)*Tsupp),'r');
legend('target-1','target-2');
title('Fig.5c');
xlabel('log2([T2t]/[T1t])');
ylabel('Binding Fraction');
data = readtable('S2_data_v1_triplicates.xlsx');
array = table2array(data);
s=scatter(log2(array(:,1)./Tsupp),array(:,2));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)./Tsupp),array(:,3));
s.MarkerEdgeColor = [0.07 0.62 1.00];
s=scatter(log2(array(:,1)./Tsupp),array(:,4));
s.MarkerEdgeColor = [0.07 0.62 1.00];
scatter(log2(array(:,1)./Tsupp),array(:,5),'rs');
scatter(log2(array(:,1)./Tsupp),array(:,6),'rs');
scatter(log2(array(:,1)./Tsupp),array(:,7),'rs');
hold off;


