clc; clear; 
%imds = imageDatastore('dataset','IncludeSubFolders',true,'LabelSource','foldernames');
imds = imageDatastore('dataset','IncludeSubfolders',true,'FileExtensions','.bmp','LabelSource','foldernames') 
disp(imds);

[traininData, testingData] = splitEachLabel(imds,0.7,'randomized','Exclude','imagesci');
disp(traininData);
layers = [imageInputLayer([128 128 3])
    convolution2dLayer(5,20)
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    fullyConnectedLayer(2)
    softmaxLayer
    classificationLayer()];
options = trainingOptions('sgdm', ...
            'LearnRateSchedule', 'piecewise', ...
            'LearnRateDropFactor', 0.2, ... 
            'LearnRateDropPeriod', 5, ... 
            'MaxEpochs', 20, ... 
            'MiniBatchSize', 300);

trainedNet = trainNetwork(traininData,layers,options);
save net net;
%options.MaxEpochs = 30;
%options.InitialLearnRate = 0.0001;