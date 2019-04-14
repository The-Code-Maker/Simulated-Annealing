function [zbest, y] = SA()

num = 3;                %变量个数
temperature = 300;      %初始温度
iter = 100;             %内部蒙特卡罗循环迭代次数

value = zeros(num,1);
for n = 1:num
    value(n,1) = (2*rand-1);
end

count = 1;
enegy(count) = Fun(value);

while temperature > 0.001       %停止迭代温度
    for n = 1:iter
        enegy1 = Fun(value);
        temp_value = Disturb(value,num);
        enegy2 = Fun(temp_value);
        
        delta_e = enegy2 - enegy1;
        if delta_e < 0
            value = temp_value;
        else
            if exp(-delta_e/temperature) > rand()
                value = temp_value;
            end
        end
    end
    count = count + 1;
    enegy(count) = Fun(value);
    temperature=temperature*0.99;
end
zbest = value;
y = enegy(end);
end
