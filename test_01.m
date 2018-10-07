clear;Delta=0.0002;D=0.03;
lambda=0.0000005;di=0.003;
T=round(0.01/Delta);
for I=1:T;for J=1:T
x2y2(I,J)=(I-T/2).*(I-T/2)+(J-T/2).*(J-T/2);end;end
gamma=pi*D/lambda*sqrt(x2y2./(x2y2+di*di/Delta/Delta));
h=2*besselj(1,gamma)./gamma;
h(T/2,T/2)=(h(T/2+1,T/2)+h(T/2-1,T/2)+h(T/2,T/2+1)+h(T/2,T/2-1))/4;
h=h.*h;H=h(T/2-5:T/2+5,T/2-5:T/2+5);
load clown.mat;Y=conv2(X,H);
figure,imagesc(X),axis off,colormap(gray),
figure,imagesc(Y),axis off,colormap(gray)