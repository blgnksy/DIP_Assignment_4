%====================================================================
%> @brief Multiply input image by (-1)^(x+y)
%>
%>
%> @author Bilgin Aksoy
%>
%> @param g2 : Input image
%>
%> @retval g2 : Output image
%>
%> @example 
%> g2=question_2_e(g2);
%>
%====================================================================


function g2= question_2_e(g2)
[x,y]=size(g2);

for x_i=1:x
    for y_i=1:y
        g2(x_i,y_i)=g2(x_i,y_i)*(-1)^(x_i+y_i);
    end
end
figure;
imshow(mat2gray(g2));
end