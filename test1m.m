x=0:1:20;
y=x;
for i=1:length(x)
    SNR=x(i);%�ŵ��������
    sim('test1');%���з�����򣬽��õ���������ʱ����ڹ�����������
    y(i)=mean(biterrorrate);%���������ʵ�ƽ��ֵ��Ϊ������
end
semilogy(x,y);%��yȡ������ͼ
hold on;
xlabel('��˹�������ŵ��е�SNR');
ylabel('������');
title('BPSK������������');
hold on;
grid on;