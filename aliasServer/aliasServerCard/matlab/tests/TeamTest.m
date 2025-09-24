classdef TeamTest < matlab.unittest.TestCase
    % TeamTest 测试团队类的功能

    methods (Test)
        function testTeamConstruction(testCase)
            % 测试团队的构造和初始化
            id = 3;
            team = jetbrains.kotlin.course.alias.team.Team(id);
            testCase.verifyEqual(team.id, id, '团队ID应该正确初始化');
            testCase.verifyEqual(team.points, 0, '团队初始分数应该为0');
            testCase.verifyEqual(team.name, 'Team#3', '团队名称应该根据ID正确生成');
        end

        function testTeamWithPointsConstruction(testCase)
            % 测试指定初始分数的团队构造
            id = 5;
            initialPoints = 10;
            team = jetbrains.kotlin.course.alias.team.Team(id, initialPoints);

            testCase.verifyEqual(team.points, initialPoints, '团队分数应该正确初始化');
        end

        function testTeamNameFormat(testCase)
            % 测试团队名称格式
            for i = 1:5
                team = jetbrains.kotlin.course.alias.team.Team(i);
                expectedName = sprintf('Team#%d', i);
                testCase.verifyEqual(team.name, expectedName, '团队名称应该遵循正确的格式');
            end
        end
    end
end
