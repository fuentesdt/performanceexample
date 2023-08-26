
clear all
close all
load('extraParams.mat' )
for iii = 1:7
disp(sprintf('run %d',iii))
tic
[initConst.ineq,initConst.ceq, initConst.ineqGrad,initConst.ceqGrad] = reducedConstraint(Xfull ,extraParamscon );
toc
end
