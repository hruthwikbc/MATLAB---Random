x=imread('me.jpg');
y=imread('crown1.jpg');

I=imresize(y,[175 175]);
image(x);
hold on;
image([290 290], [230 230], I,'CDataMapping','scaled')