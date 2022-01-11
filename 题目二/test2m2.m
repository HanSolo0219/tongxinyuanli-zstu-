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
        sim('test2');    %运行仿真程序，得到的误比特率保存在工作区变量
        y(i)=mean(BitErrorRate)    %对矩阵中各列的误码率元素分别求平均值
    end
    semilogy(x,y,'-r');      %y轴用对数标度，x轴用线性标度绘制图形
    hold on;

    N=15;
    K=11;
    S=11;
    for i=1:length(x)
        SNR=x(i)
        sim('test2');    %运行仿真程序，得到的误比特率保存在工作区变量
        y(i)=mean(BitErrorRate)    %对矩阵中各列的误码率元素分别求平均值
    end
    semilogy(x,y,'-g');      %y轴用对数标度，x轴用线性标度绘制图形
    hold on;

    N=31;
    K=26;
    S=26;
    for i=1:length(x)
        SNR=x(i)
        sim('test2');    %运行仿真程序，得到的误比特率保存在工作区变量
        y(i)=mean(BitErrorRate)    %对矩阵中各列的误码率元素分别求平均值
    end
    semilogy(x,y,'-b');      %y轴用对数标度，x轴用线性标度绘制图形
    hold on;
    
    xlabel('信噪比SNR');     %横坐标
    ylabel('误码率');         %纵坐标
    title('BPSK+汉明码不同码率对误码率性能的影响');
    legend('码率=4/7','码率=11/15','码率=26/31')
grid on;