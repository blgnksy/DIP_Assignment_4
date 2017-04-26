function question_1_b(n)
n=10;
figure;
subplot(3,1,1),fplot(@(t) (5+2*sin(6/5*pi*n*t+pi/6)),'b'),title('Continous Function');
t = -2*pi:0.01:2*pi;
y = 5+2*sin((6/5*pi*n*t)+(pi/6));
z = fft(y);
subplot(3,1,2),plot(t,abs(z)),title('Magnitude');
subplot(3,1,3),plot(t,angle(z)),title('Phase');

end