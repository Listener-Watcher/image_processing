function [C_FF] = comp_DCT(O_F,cof_k)
%% Find the threshold by sorting the coffecients and set the lowest cof_k rank coffecient to be the threshold
[Ro,Cl] = size(O_F);
Temp = sort(O_F(:),'ComparisonMethod','abs');

[M,N] = size(Temp);
Threshold = abs(Temp(M-cof_k));
%%zero out the value that is under the threshold
for i = 1 : Ro
    for j = 1 : Cl
        if(abs(O_F(i,j))<Threshold)
            O_F(i,j)=0;
        end
    end
end
C_FF = O_F;
end