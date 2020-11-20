%% 加速度更新

function [Ks,Kd,S1,S2,U]=acc_update(Num,R,V,U,A)
    S1=zeros(Num,3);
    S2=zeros(Num,3);
    for i=1:Num
         compute_ks=zeros(Num,1);
        for j=1:Num
            S1(i,:)=S1(i,:)+R(i,:)-R(j,:);
            S2(i,:)=S2(i,:)+V(i,:)-V(j,:);
            vector1=R(i,:)-R(j,:);
            compute_ks(j)=vector1*vector1';
        end
        Ks=1/max(compute_ks);
        Kd=Ks/2;
        for j=1:Num
            U(i,:)=U(i,:)-Ks*A(i,j).*S1(i,:)+Kd*A(i,j).*S2(i,:); 
        end
    end