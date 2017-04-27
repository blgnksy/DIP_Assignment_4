function question_1(n)
n=10;
figure;

subplot(2,2,1),fplot(@(t) (5+2*sin(6/5*pi*n*t+pi/6)),'b'),title('Continous Function');
t = -2*pi:0.01:2*pi;
y = 5+2*sin((6/5*pi*n*t)+(pi/6));
z = fft(y);
subplot(2,2,2),plot(t,abs(z)),title('Magnitude');
subplot(2,2,3),plot(t,angle(z)),title('Phase');

Fs = 44000;
t = 0:1/Fs:1-1/Fs;
f = 5+2*sin(6/5*pi*n*t+pi/6);
subplot(2,2,4),plot(t,f,'g'),title('Sampled Function');

end