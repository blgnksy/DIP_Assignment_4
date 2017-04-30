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