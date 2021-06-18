close all;
clear;
a = imread('images.jpg');
b = imread('images.jpg');
figure; imshow(a);
[LL1,LH1,HL1,HH1] = dwt2(a,'haar');
[LL2,LH2,HL2,HH2] = dwt2(b,'haar');

WaveCoeffCT = [LL1,LH1,HL1,HH1];
WaveCoeffMRI = [LL2,LH2,HL2,HH2];

figure;
subplot(1,2,1); imshow(WaveCoeffCT,[]);
subplot(1,2,2); imshow(WaveCoeffMRI,[]);

[ FusedWaveletCoeff] = average( WaveCoeffCT,WaveCoeffMRI );
[r,c] = size(FusedWaveletCoeff);

LL = FusedWaveletCoeff((1:r/2),(1:r/2));
LH = FusedWaveletCoeff((1:r/2),((r/2+1):r));
HL = FusedWaveletCoeff(((r/2+1):r),(1:r/2));
HH = FusedWaveletCoeff(((r/2+1):r),(r/2+1):r);
%%
% $ $$ $


FusedImage= idwt2(LL,LH,HL,HH,'haar');
WaveCoeff = [LL,LH,HL,HH];
figure;
subplot(1,3,1); imshow(a,[]);
subplot(1,3,2); imshow(b,[]);
subplot(1,3,3); imshow(FusedImage,[]);

