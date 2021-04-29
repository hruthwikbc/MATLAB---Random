

x=imread('img1.jpg');
y=imread('img2.jpg');


I=imresize(x,[250 250]);
J=imresize(y,[250 250]);

imshow(I)

for i = 1:256
    for j = 1:256
        output(i,j)=(I(i,j)+J(i,j));
        output=imresize(output,[250 250]);

    end
end

imshow(output)