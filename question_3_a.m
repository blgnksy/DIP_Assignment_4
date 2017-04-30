%====================================================================
%> @brief Filters in frequency domain with Gaussian Low Pass Filter.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param img_orj : Input image
%> @param sig_x : Standart deviation of x direction
%> @param sig_y : Standart deviation of y direction
%>
%> @example 
%> question_3_a(imread('./inputs/Assignment_4.jpg'),4,8);
%>
%====================================================================
function question_3_a(img_orj,sig_x,sig_y)
[r,c]=size(img_orj);
for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2/sig_x + (j-(c/2))^2/sig_y);
    end
end
for i=1:r
    for j=1:c
      H(i,j)= exp ( -( (d(i,j)^2)/2 ) );
    end
end

Hpadded=zeros(2*size(img_orj));
for i=1:r
    for j=1:c
        Hpadded(i+r/2,j+c/2)=H(i,j);
    end
end

figure;
subplot(2,2,1),imshow(Hpadded),title('Padded Filter');
fpadded=zeros(2*size(img_orj));
for i=1:r
    for j=1:c
        fpadded(i,j)=img_orj(i,j);
    end
end
subplot(2,2,2),imshow(mat2gray(fpadded)),title('Padded Image');
F=fft2(fpadded);
F=abs(F);
F=fftshift(F);
G=Hpadded.*F;
subplot(2,2,3),imshow(double(G)),title('Response in Frequency Domain');
g= real(ifft2(G));
g=g(1:r,1:c);
subplot(2,2,4),imshow(mat2gray(double(g))),title('Response in Spatial Domain');
end