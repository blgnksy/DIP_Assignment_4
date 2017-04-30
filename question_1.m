%====================================================================
%> @brief Plots a sin function.
%>
%>
%> @author Bilgin Aksoy
%>
%> @param n : n
%>
%> @example 
%>question_1(10);
%>
%====================================================================
function question_1(n)
figure;
t = -2*pi:0.1:2*pi;
y = 5+2*sin((6/5*pi*n*t)+(pi/6));
subplot(2,3,1),plot(t, y),title('Continous Function');
z = fft(y);
subplot(2,3,2),plot(t,abs(z)),title('Magnitude');
subplot(2,3,3),plot(t,angle(z)),title('Phase');
NyquistRate=2*(6/5*pi*n)/(2*pi);
Fs = 2*NyquistRate;
t = 0:1/Fs:1-1/Fs;
f = 5+2*sin(6/5*pi*n*t+pi/6);
subplot(2,3,4),plot(t,f,'g'),title('Sampled Function with double by Nyquist Rate');
Fs = NyquistRate/2;
t = 0:1/Fs:1-1/Fs;
f = 5+2*sin(6/5*pi*n*t+pi/6);
subplot(2,3,5),plot(t,f,'g'),title('Sampled Function with half of Nyquist Rate');

end