function [G,MagL,Phase]=question_2_ab(f)
[x,y]=size(f) ;
for x_i=1:x
    for y_i=1:y
        g(x_i,y_i)=f(x_i,y_i)*(-1)^(x_i+y_i);
    end
end
figure;
subplot(2,2,1),imshow(f),title('Original');
subplot(2,2,2),imshow(g),title('Multiplied');
G = fft2(g);
Mag=abs(G);
Phase=angle(G);
MagL=log(Mag+1);
MagL = mat2gray(MagL);
subplot(2,2,3),imshow(MagL,[]),title('Magnitude');
subplot(2,2,4),imshow(Phase,[]),title('Phase');
end