clc;clear all;
InputImage = imread('cameraman.tif');
subplot(1,3,1);imshow(InputImage);
[Row,col,plane] = size(InputImage);
[LL,LH,HL,HH] = dwt2(InputImage,'haar');
Dec = [LL,LH,HL,HH];
subplot(1,3,2); imshow(Dec,[]);
LLr = Dec(1:Row/2,1:Row/2);
LHr = Dec(1:(Row/2) ,(Row/2+1):Row);
HLr = Dec(1:Row/2,(Row+1):(Row + Row/2));
HHr = Dec((1:Row/2),(Row + Row/2 +1):(Row + Row)); 
ReconstrucedImage = idwt2(LLr,LHr,HLr,HHr,'haar');
subplot(1,3,3); imshow(ReconstrucedImage,[]);


Dec = [LL,LH,HL,HH];