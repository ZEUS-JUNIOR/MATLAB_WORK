videoObj = VideoReader('1.mp4');
FrameRate = videoObj.FrameRate
numFrames = videoObj.CurrentTime
%disp(videoObj);
%figure;
%h = axes;
%No_of_frames = videoObj.FrameRate;
%%
i = 1;
while hasFrame(videoObj)
    Frame = readFrame(videoObj);
    Filename = strcat(num2str(i),'.bmp');
    %Frame = read(videoObj,i);
    %Frame = rgb2gray(Frame);
    imwrite(Frame,Filename);
    %image(Frame,'Parent',h);
    %h.Visible = 'off';
    i= i+1;
    if i>60
        break;
    end
    pause(1/FrameRate);
end
    