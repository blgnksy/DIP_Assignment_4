%====================================================================
%> @brief Filters in frequency domain to reduce periodic noise.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param img_orj : Input image
%>
%> @example 
%> question_4_a(imread('./inputs/zebra_gray.jpg'));
%>
%====================================================================

function question_4_a(img_orj)
figure;
subplot(2,2,1),imshow(img_orj),title('Original'),axis on;
F = fft2(img_orj);
Mag=abs(F);
MagL=log(Mag+1);
MagL = mat2gray(MagL);
F_S=fftshift(MagL);
subplot(2,2,2),imshow(F_S,[]),title('Magnitude'),axis on;
indices = find(F>0.99);
F(indices) =mean2(F);
result=real(ifft2(F));
subplot(2,2,3),imshow(mat2gray(result)),title('Filtered'),axis on;
end