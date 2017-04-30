%====================================================================
%> @brief Computes the conjugate of given frequency response.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param G : Input Frequency Response.
%> @param Mag : Input Magnitude Response.
%> @param Phase : Input Phase Response.
%>
%> @retval GC : Conjugate of given frequency response.
%>
%> @example 
%>GC=question2_c(G,Mag,Phase);
%>
%====================================================================
function GC=question2_c(G,Mag,Phase)
GC=conj(G);
MagC=abs(GC);
PhaseC=angle(GC);
MagCL=log(MagC+1);
MagCL = mat2gray(MagCL);
figure;
subplot(2,2,1),imshow(Mag,[]),title('Magnitude of FFT');
subplot(2,2,2),imshow(MagCL,[]),title('Magnitude of Conjugate of FFT');
subplot(2,2,3),imshow(Phase,[]),title('Phase of FFT');
subplot(2,2,4),imshow(PhaseC,[]),title('Phase of Conjugate of FFT');
end