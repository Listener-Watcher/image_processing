% the distancetranformation function take a binary image B with its row and
% column and output the result matrix in which each pixel is assigned with
% correct distance. It is assumed that the image B should be a matrix with
% pixel objects as I have defined with properties x,y,value(0 or 1) and the
% distance.
function [C] = disTran(B,row,col)
for r = 1:row
        for c = 1:col
            V = [B(r,c)];
            assigned = 0;
            i = 0;
            while(assigned==0)
                for j = 1:size(V)
                    if(V(j).value==1)
                        B(r,c).distance=i;
                        assigned = 1;
                    end
                end
                i = i+1;
                V1 = [];
                for j = 1:size(V)
                    if(V(j).x-1>=1)
                        V1 = [V1,B(V(j).x-1,V(j).y)];
                    end
                    if(V(j).x+1<=row)
                        V1 = [V1,B(V(j).x+1,V(j).y)];
                    end
                    if(V(j).y-1>=1)
                        V1 = [V1,B(V(j).x,V(j).y-1)];
                    end
                    if(V(j).y+1<=col)
                        V1 = [V1,B(V(j).x,V(j).y+1)];
                    end
                end
                    V = [];
                    V = [V,V1];
            end
        end
end
    C = B;
end

