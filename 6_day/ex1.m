clear; clc;
load iris_dataset;
Feature = irisInputs;
TargetClass = irisTargets;

% initialiation des poids

net = patternnet(10);

% mise � jour des poids sur les entr�es

net = train(net,Feature,TargetClass);
save net net
view(net);