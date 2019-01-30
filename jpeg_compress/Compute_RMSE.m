function [RMSE] = Compute_RMSE(C_I,O_I)
[M,N] = size(O_I);
%Compute the sum of error
sum = 0;
for i = 1:M
    for j = 1:N
      sum = sum +double((C_I(i,j))-(O_I(i,j)))*double((C_I(i,j))-(O_I(i,j)));
   end
end
RMSE = double(sqrt(1/(M*N)*double(sum)));
end

