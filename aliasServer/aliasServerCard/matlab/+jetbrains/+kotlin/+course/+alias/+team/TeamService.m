classdef TeamService < handle
    % TeamService 团队服务类，管理团队相关操作

    properties (Access = private)
        teamsStorage   % 用于本地缓存的 Map
    end


    methods
        function obj = TeamService()
            % 构造函数，本地的Map缓存对象
            obj.teamsStorage = configureDictionary("double", "jetbrains.kotlin.course.alias.team.Team");
        end

        function teams = generateTeamsForOneRound(obj, teamsNumber)

            teams = cell(1, teamsNumber);
            import jetbrains.kotlin.course.alias.util.IdentifierFactory;
            import jetbrains.kotlin.course.alias.team.Team;
            factory = IdentifierFactory();
            % 生成指定数量的团队
            for i = 1:teamsNumber
                id = factory.uniqueIdentifier();
                teams{i} = Team(id);

                % 存储团队到静态存储中
                obj.storeTeam(id, teams{i});
            end
        end
    
        function storeTeam(obj, id, team)
            % if ~obj.teamsStorage.isKey(id)
            %     obj.teamsStorage(id) = team;
            % end
            obj.teamsStorage(id) = team;
        end

        function value = getTeamById(obj, id)
            % 从缓存中读取键对应的值
            if obj.teamsStorage.isKey(id)
                value = obj.teamsStorage(id);
            else
                value = [];
                warning('Key "%s" 不存在于缓存中。', id);
            end
        end
    end    
end
