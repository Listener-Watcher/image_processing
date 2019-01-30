disp("load image");
I = load("IMG_7405.mat");
O_I=I.I;
QF = 10;
[J,C,rms] = myJpeg(O_I,10);
figure(1);
imshow(O_I);
figure(2);
imshow(J);
disp("Cmpression rate is:")
disp(C);
disp("root mean square is:")
disp(rms);

