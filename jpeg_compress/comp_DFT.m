function [C_FF] = comp_DFT(O_F,cof_k)
%% Find the threshold by sorting the coffecients and set the lowest cof_k rank coffecient to be the threshold
[Ro,Cl] = size(O_F);
Temp = sort(O_F(:),'ComparisonMethod','abs');

[M,N] = size(Temp);
Threshold = abs(Temp(M-cof_k));
%%zero out the value that is under the threshold and keep only one of a complex
%%conjugate pair(positive imaginary part is kept,negative imaginary part is thrown away)
for i = 1 : Ro
    for j = 1 : Cl
        if(abs(O_F(i,j))<Threshold||imag(O_F(i,j))<0)
            O_F(i,j)=0;
        end
    end
end
C_FF = O_F;
end

