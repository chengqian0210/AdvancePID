%%控制律参数 b0可以看作输入增益信息
b0 = 1.5;

%%ESO参数 配置极点 （ S + 1/epsilon)^3 => S^3 + alpha1/epsilon * S^2 +
%%alpha2/epsilon^2 * S + alpha3/epsilon^3 这样的对应解出alpha1/2/3，


alpha1 = 3;
alpha2 = 3;
alpha3 = 1;

%%epsilon越小越好，对应wo越大越好
wo = 100;
epsilon = 1/wo;

%%这个对应书上的公式（5.36）（5.37）（5.38），描述观测器即ESO
k1 = alpha1/epsilon;
k2 = alpha2/epsilon^2;
k3 = alpha3/epsilon^3;

%%PID控制器参数，常规PID调节
P = 200;
I = 10;
D = 80;