clc;clear; close all;
figure;
Qvalue = 15;
InputImage = imread('cameraman.tif');
subplot(1,3,1);imshow(InputImage);
[Row,col,plane] = size(InputImage);
[LL,LH,HL,HH] = dwt2(InputImage,'haar');
Dec = [LL,LH,HL,HH];
subplot(1,3,2); imshow(Dec,[]);

Dec = Dec/Qvalue;

Dec = round(Dec);
QuantizedImage = Dec;
ImageArray = toZigZag(QuantizedImage);
 %%Run Length Encoding
%      j=1;
%      a=length(ImageArray);
%      count=0;
%      for n=1:a
%       b=ImageArray(n);
%       if n==a
%       count=count+1;
%       c(j)=count;
%       s(j)=ImageArray(n);
%       elseif ImageArray(n)==ImageArray(n+1)
%       count=count+1;
%       elseif ImageArray(n)==b
%       count=count+1;
%       c(j)=count;
%       s(j)=ImageArray(n);
%       j=j+1;
%       count=0;
%       end
%      end
     

ReconstructedImage = invZigZag(ImageArray);

Dec = Dec*Qvalue;
LLr = Dec(1:Row/2,1:Row/2);
LHr = Dec(1:(Row/2) ,(Row/2+1):Row);
HLr = Dec(1:Row/2,(Row+1):(Row + Row/2));
HHr = Dec((1:Row/2),(Row + Row/2 +1):(Row + Row)); 
ReconstrucedImage = idwt2(LLr,LHr,HLr,HHr,'haar');
subplot(1,3,3); imshow(ReconstrucedImage,[]);
