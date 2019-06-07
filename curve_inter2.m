function [Cseed,Csupp] = curve_inter2(At,Tsupp,Kdseed,Kdsupp)
Cseed = zeros(1,1501);
Csupp = zeros(1,1501);
for i = 1:1501
    [Cseed(i),Csupp(i)] = sequester(At,(i/10-0.1)*Tsupp,Tsupp,Kdseed,Kdsupp);
end