function question_1_b()
n=10;
fplot(@(t) (5+2*sin(6/5*pi*n*t+pi/6)),'b');
syms t m;
F=fourier(5+2*sin(6/5*pi*n*t+pi/6),m);
fplot(abs(F));
fplot(angle(F));

end