x1 = input('Input the 1st Sequence: ');
st1 = input('Enter the Starting Point 1st Sequence: ');
num1 = st1 + length(x1)-1;
n1 = linspace(st1,num1,length(x1));
subplot(3,1,1);
stem(n1,x1);
hold on;
xlim([min(n1)-1 max(n1)+1]);
ylim([min(x1)-1 max(x1)+1]);
xlabel('n -->');
ylabel('Amplitude');
title('Sequence X1');
hold off;

x2 = input('Input the 2nd Sequence: ');
st2 = input('Input the Starting Point of 2nd Sequence: ');
num2 = st2 + length(x2)-1;
n2 = linspace(st2,num2,length(x2));
subplot(3,1,2);
stem(n2,x2);
hold on;
xlim([min(n2)-1 max(n2)+1]);
ylim([min(x2)-1 max(x2)+1]);
xlabel('n -->');
ylabel('Amplitude');
title('Sequence X2');
hold off;

num3 = st1 + st2 + length(x1)+length(x2)-2;
n = linspace(st1+st2,num3,length(x1)+length(x2)-1);

y = conv(x1,x2);
subplot(3,1,3);
stem(n,y);
hold on;
xlim([min(n)-1 max(n)+1]);
ylim([min(y)-1 max(y)+1]);
xlabel('n -->');
ylabel('Amplitude');
title('Sequence Y');
hold off;
