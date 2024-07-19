%% 已知两条直线的两个端点，求其交点坐标
function [X, Y]= node( X1,Y1,X2,Y2 )

if X1(1)==Y1(1)
    X=X1(1);
    k2=(Y2(2)-X2(2))/(Y2(1)-X2(1));
    b2=X2(2)-k2*X2(1);
    Y=k2*X+b2;
end
if X2(1)==Y2(1)
    X=X2(1);
    k1=(Y1(2)-X1(2))/(Y1(1)-X1(1));
    b1=X1(2)-k1*X1(1);
    Y=k1*X+b1;
end
if X1(1)~=Y1(1)&&X2(1)~=Y2(1)
    k1=(Y1(2)-X1(2))/(Y1(1)-X1(1));
    k2=(Y2(2)-X2(2))/(Y2(1)-X2(1));
    b1=X1(2)-k1*X1(1);
    b2=X2(2)-k2*X2(1);
    if k1==k2
        X=[];
        Y=[];
    else
        X=(b2-b1)/(k1-k2);
        Y=k1*X+b1;
    end
end

if (size(X,1) ~= 0) && ((min(X1(1), Y1(1)) > X) || (max(X1(1), Y1(1)) < X) || (min(X1(2), Y1(2)) > Y) || (max(X1(2), Y1(2)) < Y))
    X=[];
    Y=[];   
end

end