%% 速度限制
function V=V_constrian(V,Num)
for i=1:Num  %速度限制
    for k=1:Num
        for j=1:3
            if V(i,j)>10
                V(i,j)=V(i,j)-10;
            end
            if V(i,j)<-10
                V(i,j)=V(i,j)+10;
            end
            a=V(i,:)-V(k,:);
            a=sqrt(a*a');
            if a>20
                V(i,:)=V(k,:);
            end
        end
    end
end
end