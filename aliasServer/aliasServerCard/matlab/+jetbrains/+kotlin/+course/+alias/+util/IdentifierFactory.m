classdef IdentifierFactory < handle
    % IdentifierFactory 生成唯一标识符
    %   维护一个计数器以生成连续的唯一标识符
    %   实现的方式是让一个IdentifierFactory类型的对象持续的维护id

    % 设置定义对象的如下属性在赋值之后是不可修改的
    properties (Access = private)
        % 内部计数器，形状为1x1矩阵，也就是标量，类型为double
        counter (1,1) double
    end

    methods

        function obj = IdentifierFactory(initialValue)
            % IdentifierFactory 的构造函数
            % 输入:
            %   initialValue - 计数器的可选初始值
            arguments
                initialValue (1,1) double = 0
            end
            obj.counter = initialValue;
        end

        function id = uniqueIdentifier(obj)
            % 生成一个新的唯一标识符
            id = obj.counter;
            obj.counter = obj.counter + 1;
        end
    end
end
