
clear all
close all
load('extraParams.mat' )
for iii = 1:7
disp(sprintf('run %d',iii))
tic
   profile on
[initConst.ineq,initConst.ceq, initConst.ineqGrad,initConst.ceqGrad] = reducedConstraint(Xfull ,extraParamscon );
   myprof = profile('info')
   save(sprintf('profiledata%d',iii)'','myprof')
   profile off
toc
end
