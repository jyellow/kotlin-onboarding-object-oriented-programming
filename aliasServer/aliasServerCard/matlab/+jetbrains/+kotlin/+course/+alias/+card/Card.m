classdef Card
    % Card 表示 Alias 游戏中的一张卡片
    %   包含一个标识符和一系列单词

    % 设置定义对象的如下属性在赋值之后是不可修改的
    properties (SetAccess = immutable)
        % 设置id属性的形状为1x1的double类型
        id (1,1) double
        % 设置words属性为jetbrains.kotlin.course.alias.card.Word类型的列向量
        words (:,1) jetbrains.kotlin.course.alias.card.Word
    end

    methods
        function obj = Card(id, words)

            arguments
                id (1,1) double
                words (:,1) jetbrains.kotlin.course.alias.card.Word
            end
            obj.id = id;
            obj.words = words;
        end

        function tf = eq(obj1, obj2)
            % Card 对象的相等性比较
            if ~isa(obj2, 'jetbrains.kotlin.course.alias.card.Card')
                tf = false;
                return
            end
            tf = (obj1.id == obj2.id) && ...
                 (length(obj1.words) == length(obj2.words)) && ...
                 all(cellfun(@(w1,w2) strcmp(w1.string(), w2.string()), ...
                 num2cell(obj1.words), num2cell(obj2.words)));
        end
    end
end
