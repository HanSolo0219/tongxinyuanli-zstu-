clear 
clc
x=-10:1:10;
y=x;
    N=7;
    K=4;
    S=4;
    BitRate=10000;
    for i=1:length(x)
        SNR=x(i)
        sim('test2');    %���з�����򣬵õ���������ʱ����ڹ���������
        y(i)=mean(BitErrorRate)    %�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
    end
    semilogy(x,y,'-r');      %y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
    hold on;

    N=15;
    K=11;
    S=11;
    for i=1:length(x)
        SNR=x(i)
        sim('test2');    %���з�����򣬵õ���������ʱ����ڹ���������
        y(i)=mean(BitErrorRate)    %�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
    end
    semilogy(x,y,'-g');      %y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
    hold on;

    N=31;
    K=26;
    S=26;
    for i=1:length(x)
        SNR=x(i)
        sim('test2');    %���з�����򣬵õ���������ʱ����ڹ���������
        y(i)=mean(BitErrorRate)    %�Ծ����и��е�������Ԫ�طֱ���ƽ��ֵ
    end
    semilogy(x,y,'-b');      %y���ö�����ȣ�x�������Ա�Ȼ���ͼ��
    hold on;
    
    xlabel('�����SNR');     %������
    ylabel('������');         %������
    title('BPSK+�����벻ͬ���ʶ����������ܵ�Ӱ��');
    legend('����=4/7','����=11/15','����=26/31')
grid on;