faceDetection = vision.CascadeObjectDetector;
camObj = webcam(2);
preview(camObj);
cnt = 1;
for i =1:100
    img = snapshot(camObj);
    bboxes = step(faceDetection,img);
    Ifaces = insertObjectAnnotation(img,'rectangle',bboxes,'Face');
    imshow(Ifaces);
    if ~isempty(bboxes)
        if cnt == 20
            break
        end
        face1 = imcrop(img,bboxes(1,:));
        filename = strcat(num2str(i),'.bmp');
        imwrite(face1,filename);
        cnt = cnt + 1;
    end
end
