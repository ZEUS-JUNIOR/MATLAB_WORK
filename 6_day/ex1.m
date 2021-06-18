clear; clc;
load iris_dataset;
Feature = irisInputs;
TargetClass = irisTargets;

% initialiation des poids

net = patternnet(10);

% mise à jour des poids sur les entrées

net = train(net,Feature,TargetClass);
save net net
view(net);