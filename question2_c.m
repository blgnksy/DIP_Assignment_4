function [CMag,CPhase]=question2_c(Mag,Phase)
CMag = conj(Mag);
CPhase=conj(Phase);
figure;
subplot(2,2,1),imshow(Mag,[]),title('Magnitude of FFT');
subplot(2,2,2),imshow(CMag,[]),title('Magnitude of Conjugate of FFT');
subplot(2,2,3),imshow(Phase,[]),title('Phase of FFT');
subplot(2,2,4),imshow(CPhase,[]),title('Phase of Conjugate of FFT');
end