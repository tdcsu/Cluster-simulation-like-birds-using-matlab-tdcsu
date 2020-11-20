%% 视觉调整
function R=Visual_ajust(Num,R)
aix=400;
for i=1:Num
    for j=1:3
        if R(i,j)>aix
            R(i,j)=R(i,j)-aix;
        end
        if R(i,j)<-aix
            R(i,j)=R(i,j)+aix;
        end
    end
end
end