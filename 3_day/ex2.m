vidObj = VideoWriter('2.mp4','MPEG-4');
open(vidObj);
str = '.bmp';
h = axes;

for i=1:60
    Filename = strcat(num2str(i),str);
    Frame = imread(Filename);
    image(Frame,'Parent',h);
    h.Visible = 'off';
    % on va ecrire ici la frame
    pause(1/30);
    currFrame = getframe(gca);
    writeVideo(vidObj,currFrame);
end
close(vidObj);