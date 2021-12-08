
clear;
clc;
%% ��΢�ַ���
x0 = [1, 10, 0, 0];
tspan = [0, 1.5];
[T, X] = ode45(@f, tspan, x0);

%% ��ͼ
figure;
plot(T, X(:, 1))
ylabel('E');
xlabel('Time');

figure;
plot(T, X(:, 2))
ylabel('S');
xlabel('Time');

figure;
plot(T, X(:, 3))
ylabel('ES');
xlabel('Time');

figure;
plot(T, X(:, 4))
ylabel('P');
xlabel('Time');

V=150*X(:, 3);
    
figure;
plot(X(:,2),V)
xlabel('S')
ylabel('V')
%% ΢�ַ��̺���
function fx = f(t, x)
    % ��ʼ��fx����ҪΪ������
    fx = zeros(4, 1);
    % �ĸ�΢�ַ�����
    fx(1) =750*x(3) - 100*(x(1)-x(3))*x(2) ;
    fx(2) =600*x(3)-100*(x(1)-x(3))*x(2) ;
    fx(3) =100*(x(1)-x(3))*x(2)-750*x(3);
    fx(4) =150*x(3) ;    
end
%reference material��https://www.zhihu.com/question/395096211/answer/1227935749