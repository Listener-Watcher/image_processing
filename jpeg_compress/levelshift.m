%level shift the matrix by 128 and then do dct2 tranformation
function [J] = levelshift(I)
I = I - 128;
J = dct2(I);
end

