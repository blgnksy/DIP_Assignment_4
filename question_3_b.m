function question_3_b(img_orj,sig_x,sig_y)
[r,c]=size(img_orj);
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2/sig_x + (j-(c/2))^2/sig_y);
    end
end
for i=1:r
    for j=1:c
      h(i,j)= 1/(sqrt(2*sig_x*sig_y))*exp ( -( (d(i,j)^2)/2 ) );
    end
end
figure;
subplot(2,2,1),imshow(mat2gray(h)),title('Gaussian Kernel');
subplot(2,2,2),imshow(mat2gray(img_orj)),title('Original Image');
G=conv2(double(img_orj),h);
size(G)
G=G(r/2:r/2+r,c/2:c/2+c);
subplot(2,2,3),imshow(mat2gray(G)),title('Convolution');
end
