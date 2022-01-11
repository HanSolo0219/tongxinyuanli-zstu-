clc
x=-10:1:10;
y=x;
BitRate=10000;
    N=7;
    K=4;
    S=4;
    for i=1:length(x)
        SNR=x(i);
        sim('test2');    %运行仿真程序，得到的误比特率保存在工作区变量
        y(i)=mean(BitErrorRate);    %对矩阵中各列的误码率元素分别求平均值
    end
    semilogy(x,y,'-r');      %y轴用对数标度，x轴用线性标度绘制图形
    hold on;
    xlabel('信噪比SNR');
    ylabel('误码率');
    title('BPSK+汉明码的信噪比和误码率关系');
    axis([-10,10,1e-6,1]);
grid on;
