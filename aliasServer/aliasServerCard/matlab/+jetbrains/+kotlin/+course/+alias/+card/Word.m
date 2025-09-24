classdef Word
    % Word 表示 Alias 游戏中的一个单词
    %   这是一个包装字符串的不可变值类

    % 设置定义对象的如下属性在赋值之后是不可修改的
    properties (SetAccess = immutable)
        word (1,1) string % 单词本身
    end

    methods
        function obj = Word(word)
            arguments
                word (1,1) string
            end
            obj.word = word;
        end

        function str = string(obj)
            % 将 Word 对象转换为字符串
            str = obj.word;
        end
    end
end
