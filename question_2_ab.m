function [Mag,Phase]=question_2_ab(f)
[x,y]=size(f) ;
g=f.*(-1)^(x+y);
figure;
subplot(2,2,1),imshow(f),title('Original');
subplot(2,2,2),imshow(g),title('Multiplied');
G = fft2(g);
Mag=abs(G);
Phase=angle(G);
Mag=log(Mag+1);
Mag = mat2gray(Mag);
subplot(2,2,3),imshow(Mag,[]),title('Magnitude');
subplot(2,2,4),imshow(Phase,[]),title('Phase');
end