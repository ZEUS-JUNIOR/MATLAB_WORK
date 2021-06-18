clc;clear;
load net;
load iris_dataset;

Features = irisInputs;
testdata = Features(:,1);
RecognizedClass = net(testdata);
RecognizedClass = vec2ind(RecognizedClass);
disp(RecognizedClass);
