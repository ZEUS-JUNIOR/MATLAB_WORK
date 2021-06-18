clear; clc;
faceDetector = vision.CascadeObjectDetector;
camObj = webcam(1);
count = 1;
while(1)
    %img = imread('dream.PNG');
    img = snapshot(camObj);
    bboxes = step(faceDetector,img); 
    if ~isempty(bboxes)
        if count == 20
            break
        else

            face1 = imcrop(img,bboxes(1,:));
            face = imresize(face1,[128 128]);
            filename = strcat(num2str(count),'.bmp');
            imwrite(face1,filename);
            Ifaces = insertObjectAnnotation(img,'rectangle',bboxes,'Face');
            figure; imshow(Ifaces);title('Detected faces');    
            count = count + 1;
        end
    end
end