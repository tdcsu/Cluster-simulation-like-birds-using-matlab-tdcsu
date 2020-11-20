%% 画图
plot3(R(:,1),R(:,2),R(:,3),'.b');
aix=150;
% axis([-50,2*aix,-aix,2*aix,0,2*aix]);
axis([0,2*aix,0,2*aix,0,2*aix]);
xlabel('x/m');ylabel('y/m');zlabel('z/m');
title(strcat('t=',num2str(K*deta_t),'s'));
drawnow
% pause(deta_t/5)%播放速度