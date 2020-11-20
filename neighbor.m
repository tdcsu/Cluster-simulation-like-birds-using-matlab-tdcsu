%% 近邻矩阵更新
function A=neighbor(Num,A,R)
for i=1:Num
    distance=zeros(Num,1);
    for j=1:Num
        a=R(i,:)-R(j);
        a=a*a';
        a=sqrt(a);
        distace(j)=a;
        if a>50
            A(i,j)=1;
        end
        if a>10&&a<50&&a==10&&a==50
            A(i,j)=0;
        end
        if a*a'<10
            A(i,j)=-1;
        end
    end
end
end