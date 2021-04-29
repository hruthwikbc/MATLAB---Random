x=imread('1.jpg');
y=imread('2.jpg');
z=imread('3.jpg');

figure(1)
subplot(311)
imshow(x)
subplot(312)
imshow(y)
subplot(313)
imshow(z)

[row1, col1]=size(x);
[row2, col2]=size(y);
[row3, col3]=size(z);

counter1=zeros(1, 256);
counter2=zeros(1, 256);
counter3=zeros(1, 256);

for int_level=0:255;
    for i=1:row1;
        for j=1:col1;
            pixel1=x(i,j);
            if pixel1 == int_level
                counter1(int_level+1)=counter1(int_level+1)+1;
            end
        end
    end
end

for int_level=0:255;
    for i=1:row2;
        for j=1:col2;
            pixel2=y(i,j);
            if pixel2 == int_level
                counter2(int_level+1)=counter2(int_level+1)+1;
            end
        end
    end
end

for int_level=0:255;
    for i=1:row3;
        for j=1:col3;
            pixel3=z(i,j);
            if pixel3 == int_level
                counter3(int_level+1)=counter3(int_level+1)+1;
            end
        end
    end
end

figure(2)
subplot(311)
plot(0:255,counter1)
subplot(312)
plot(0:255,counter2)
subplot(313)
plot(0:255,counter3)