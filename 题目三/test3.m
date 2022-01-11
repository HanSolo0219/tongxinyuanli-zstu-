x=0:1:30;%信噪比
y=zeros(size(x));%产生全零矩阵
BitRate=100;%信源产生信号的bit为100bit/s
BitRatePN=200;%伪随机码速率bit/s

for i=1:length(x)
SNR=x(i);
sim('test3');%运行仿真程序，得到的误比特率保存在工作区变量BitErrorRate中
y(i)=mean(BitErrorRate);%对矩阵中各列的误码率元素分别求平均值
end
semilogy(x,y,'-r');%y轴用对数标度，x轴用线性标度绘制图形
hold on;
BitRate=100;%信源产生信号的bit为100bit/s
BitRatePN=300;%伪随机码速率bit/s

for i=1:length(x)
SNR=x(i);
sim('test3');%运行仿真程序，得到的误比特率保存在工作区变量BitErrorRate中
y(i)=mean(BitErrorRate);%对矩阵中各列的误码率元素分别求平均值
end
semilogy(x,y,'-k');%y轴用对数标度，x轴用线性标度绘制图形
hold on;
BitRate=100;%信源产生信号的bit为100bit/s
BitRatePN=400;%伪随机码速率bit/s

for i=1:length(x)
SNR=x(i);
sim('test3');%运行仿真程序，得到的误比特率保存在工作区变量BitErrorRate中
y(i)=mean(BitErrorRate);%对矩阵中各列的误码率元素分别求平均值
end
semilogy(x,y,'-b');%y轴用对数标度，x轴用线性标度绘制图形
xlabel('信噪比SNR（db）');
ylabel('误码率Pe');
title('不同扩频增益下的误码率');
legend('扩频增益=20','扩频增益=30','扩频增益=40');%给图形加注释
axis([-10 5 1e-6 1]);%坐标轴
grid on;