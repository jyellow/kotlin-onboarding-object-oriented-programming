classdef Team < handle
    % Team 团队类，表示游戏中的一个团队

    properties
        points % 团队得分
        name   % 团队名称
    end

    properties (SetAccess = immutable)
        % 设置id属性的形状为1x1的double类型
        id (1,1) double
    end

    methods
        function obj = Team(id, points)
          arguments
              id (1,1) double
              points (1,1) double = 0
          end

          % 构造函数，初始化团队
          % id: 唯一标识符
          obj.id = id;
          % points: 团队得分（可选，默认为0），points为可选参数
          obj.points = points;
          % 生成团队名称
          obj.name = sprintf('Team#%d', obj.id);
        end
    end
end
