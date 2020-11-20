%% 参数初始化
Num=20;
neig=10;
t=50;
deta_t=0.1;
ScanIdx=t/deta_t;
A=ones(Num)-eye(Num);
R=50*rand(Num,3);
R(1,:)=[0,0,0];
V=10*rand(Num,3);
U=3*rand(Num,3);
% plot3(B0(:,1),B0(:,2),B0(:,3),'.','MarkerSize',10);