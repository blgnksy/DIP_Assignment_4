%====================================================================
%> @brief Computes the spatial response.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param GC : Input frequency response
%>
%> @retval gc : Spatial response.
%>
%> @example 
%>g2=question_2_d(GC);
%>
%====================================================================

function [gc]=question_2_d(GC)
gc=ifft2(GC);
figure;
subplot(1,1,1),imshow(mat2gray(gc));
end