function [J] = MyColorHistEQ(I)
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
%saparate the original image with red, green, and blue components.
R_T = myHistogramEq(R);
G_T = myHistogramEq(G);
B_T = myHistogramEq(B);
% do equalization individually for three components
I(:,:,1) = R_T;
I(:,:,2) = G_T;
I(:,:,3) = B_T;
J = I; %comibine the three components together to get the new image.
end

