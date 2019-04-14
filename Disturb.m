function [value] = Disturb(value,num)
    
%     %产生随机扰动
%     p1=floor(1+num*rand());
%     p2=floor(1+num*rand());
% 
%     while p1==p2
%         p1=floor(1+num*rand());
%         p2=floor(1+num*rand());    
%     end
%     temp = value(p1);
%     value(p1) = value(p2);
%     value(p2) = temp;
    
    for n = 1:num
        value(n,1) = (2*rand-1);
    end
    
end