function [gc]=question_2_d(GC)
gc=ifft2(GC);
figure;
subplot(1,1,1),imshow(mat2gray(gc));
end