function question_3_a(img_orj,d0)

[r,c]=size(img_orj);

d=zeros(r,c);
h=zeros(r,c);

for i=1:r
    for j=1:c
     d(i,j)=  sqrt( (i-(r/2))^2 + (j-(c/2))^2);
    end
end

for i=1:r
    for j=1:c
      h(i,j)= exp ( -( (d(i,j)^2)/(2*(d0^2)) ) );
    end
end


for i=1:r
    for j=1:c
    res(i,j)=(h(i,j))*img_orj(i,j);
    end
end
figure;
imshow(res);

end