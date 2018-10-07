A = [0 1 1 1;1 1 0 0; 1 1 0 0; 1 1 0 1];% assume this is a 4*4 binary image
row = size(A,1);
col = size(A,2);
isAllZero = 1;
for i = 1:row
    for j = 1:col
        if(A(i,j)==1)
            isAllZero = 0;
        end
    end
end
B = [Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0);
     Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0);
     Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0);
     Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0) Pixel(A(1,1),1,1,0)];
for m =1:row
    for n = 1:col
        a = Pixel(A(m,n),m,n,0);
        B(m,n) = a;
    end
end
% B is the matrix with each pixel object
if(isAllZero==0)
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
end
%alogrithm implementation
for m = 1:row
    for n = 1:col
        z = B(m,n).distance
    end
end
% show each pixel's distancetranform
                    
                        
                
            
            
            