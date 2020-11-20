clc
clear all
%% 参数初始化
init; %可以在对应的脚本里修改参数
%%
writerObj=VideoWriter('test.avi'); %// 定义一个视频文件用来存动画
open(writerObj); %// 打开该视频文件
%% 二阶积分器简化模型
for K=1:ScanIdx
    %% 加速度更新
    [Ks,Kd,S1,S2,U]=acc_update(Num,R,V,U,A);
    %% 加速度限制
    U=acc_restrain(Num,U);
    %% 速度更新
    V=V+deta_t.*U;
    %% 速度限制
    V=V_constrian(V,Num);
    %% 近邻矩阵更新
    A=neighbor(Num,A,R);
    %     [Y,i]=max(distance)
    %% 位置更新
    R=R+deta_t.*V+0.5*deta_t^2.*U;
    %     R(1,2)=100*cos(K*deta_t);
    %     R(1,1)=100*sin(K*deta_t);
    %% 视觉调整，让群体能始终在界面上
    R=Visual_ajust(Num,R);
    %% 画图
    Plot
    M(ScanIdx) = getframe;
    writeVideo(writerObj,M(ScanIdx));
end
close(writerObj);
