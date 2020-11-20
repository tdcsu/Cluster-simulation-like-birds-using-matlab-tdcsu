%% 加速度限制
function U=acc_restrain(Num,U)
acc_l=3;
for i=1:Num
    for j=1:3
        if U(i,j)>acc_l
            U(i,j)=U(i,j)-acc_l;
        end
        if U(i,j)<-acc_l
            U(i,j)=U(i,j)+acc_l;
        end
    end
    for j=1:Num
        for k=1:3
            if U(i,k)>acc_l
                U(i,k)=U(i,k)-acc_l;
            end
            if U(i,k)<-1
                U(i,k)=U(i,k)+acc_l;
                if abs(U(i,k)-U(j,k))>acc_l
                    U(i,k)=U(j,k);
                end
            end
        end
    end
end