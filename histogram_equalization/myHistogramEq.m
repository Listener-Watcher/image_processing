function [J] = myHistogramEq(I)
[r,c] = size(I);
X = zeros(1,256);
for k = 1:256
    for i = 1:r
        for j = 1:c
            if (k-1) == I(i,j)
                X(1,k) = X(1,k)+1;
            end
        end
    end
end
% X is the array which count the number of pixel of every intensity value
% from 0 to 255.
X = X./(r*c); % Now it turns to pmf
S = zeros(size(X));
sum = 0;
col = 256;

for i=1:col
    sum = sum + X(1,i);
    S(1,i) = sum;
end
% S becomes cdf
S = round(S.*255);
L = zeros(size(I));
for i = 1:r
    for j = 1:c
            L(i,j) = S(1,I(i,j)+1);
    end
end
% do the actual mapping on the image
J = uint8(L);
% change double to 8bits unsigned int so that the image can be used with imhist()
% function
end
