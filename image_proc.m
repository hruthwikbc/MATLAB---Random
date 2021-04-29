%to read image
x=imread('imag proc ex.jpg');
%to display image 
%imshow(x)
%to check its properties
%imtool(x)
%to check dimention
%size(x)

%to invert image
%y=255-x;
%imtool(y)

%to increase intensity or brightness v=x+A or v=x*A 
%to decrease intensity or brightness v=x-A or v=x/A
%subplot(211)
%imshow(x)
%subplot(212)
%v=x/10;
%imshow(v)

%colour to grey
%y=rgb2gray(x);
%imshow(x)

%convert to black and white or binary image
x=rgb2gray(x);
y=zeros(size(x));
[row, col]=size(x);
for i=1:row;
    for j=1:col;
        if x(i,j)<=200;
            y(i,j)=0;
        else
             y(i,j)=255;
        end
    end
end

imshow(x)
imshow(y)
        
