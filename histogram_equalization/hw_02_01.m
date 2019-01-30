I = imread("q4.jpeg");
[M,N] = size(I);
X = fft2(I);
Y = ifft2(X);
sum = 0 ;
for i = 1:M
    for j = 1:N
        sum = sum + pow2(Y(i,j)-I(i,j));
    end
end
RMSE = 1/(M*N)*sqrt(sum);

