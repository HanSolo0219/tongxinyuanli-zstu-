clc
x=-10:1:10;
y=x;
BitRate=10000;
    N=7;
    K=4;
    S=4;
    for i=1:length(x)
        SNR=x(i);
        sim('test2');    %���з�����򣬵õ���������ʱ����ڹ���������
        y(i)=mean(BitErrorRate);    %�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
    end
    semilogy(x,y,'-r');      %y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
    hold on;
    xlabel('�����SNR');
    ylabel('������');
    title('BPSK+�����������Ⱥ������ʹ�ϵ');
    axis([-10,10,1e-6,1]);
grid on;
