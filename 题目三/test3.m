x=0:1:30;%�����
y=zeros(size(x));%����ȫ�����
BitRate=100;%��Դ�����źŵ�bitΪ100bit/s
BitRatePN=200;%α���������bit/s

for i=1:length(x)
SNR=x(i);
sim('test3');%���з�����򣬵õ���������ʱ����ڹ���������BitErrorRate��
y(i)=mean(BitErrorRate);%�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
end
semilogy(x,y,'-r');%y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
hold on;
BitRate=100;%��Դ�����źŵ�bitΪ100bit/s
BitRatePN=300;%α���������bit/s

for i=1:length(x)
SNR=x(i);
sim('test3');%���з�����򣬵õ���������ʱ����ڹ���������BitErrorRate��
y(i)=mean(BitErrorRate);%�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
end
semilogy(x,y,'-k');%y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
hold on;
BitRate=100;%��Դ�����źŵ�bitΪ100bit/s
BitRatePN=400;%α���������bit/s

for i=1:length(x)
SNR=x(i);
sim('test3');%���з�����򣬵õ���������ʱ����ڹ���������BitErrorRate��
y(i)=mean(BitErrorRate);%�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
end
semilogy(x,y,'-b');%y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
xlabel('�����SNR��db��');
ylabel('������Pe');
title('��ͬ��Ƶ�����µ�������');
legend('��Ƶ����=20','��Ƶ����=30','��Ƶ����=40');%��ͼ�μ�ע��
axis([-10 5 1e-6 1]);%������
grid on;