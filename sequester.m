function [c1,c2,C1,C2] = sequester(At,T1,T2,Kd1,Kd2)
R1 = 0:0.01:At;
R2 = 0:0.01:At;
C1 = 0.5*(Kd1+At+T1-R2-sqrt((Kd1+At+T1-R2).^2-4*(At*T1-T1*R2)));
%figure(3);
%plot(R2,C1,'b');
%xlabel('complex2/nM');
%ylabel('complex1/nM');
%hold on;
C2 = 0.5*(Kd2+At+T2-R1-sqrt((Kd2+At+T2-R1).^2-4*(At*T2-T2*R1)));
%figure(2);
%plot(C2,R1,'r');
%xlabel('complex2/nM');
%ylabel('complex1/nM');
%hold off;
[c2,c1] = intersections(R2,C1,C2,R1);
end
