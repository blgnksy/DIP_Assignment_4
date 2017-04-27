function question_2_d(CMag,CPhase)
gc=ifft2(CMag*exp(1j*CPhase));
figure;
subplot(1,1,1),imshow(gc);
end