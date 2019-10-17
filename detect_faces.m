A= imread('faces5.jpg');

FaceDetector = vision.CascadeObjectDetector();

bbox = step(FaceDetector,A);

detected = insertObjectAnnotation(A,'rectangle',bbox,'face');
imshow(detected); title('Detected Images');

n = size(bbox,1);

str_n = num2str(n);
str = strcat('Detected Faces are = ',str_n);
disp(str);
