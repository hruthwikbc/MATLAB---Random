
x=imread('me.jpg');
y=imread('crown1.jpg');


I=imresize(y,[50 50]);
%imtool(x)

new = x;
new(373:320+49, 393:393+49) = x(373:320+49, 393:393+49) + I;
imshow(new)
