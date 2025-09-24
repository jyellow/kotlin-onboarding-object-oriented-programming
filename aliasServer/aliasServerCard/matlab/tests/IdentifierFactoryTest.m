classdef IdentifierFactoryTest < matlab.unittest.TestCase
    % IdentifierFactoryTest 测试标识符工厂类的功能

    methods (Test)
          function testIdentifierFactory(testCase)
            % Test IdentifierFactory functionality
            import jetbrains.kotlin.course.alias.util.IdentifierFactory

            factory = IdentifierFactory();

            % Test sequential generation
            id1 = factory.uniqueIdentifier();
            id2 = factory.uniqueIdentifier();
            id3 = factory.uniqueIdentifier();

            testCase.verifyEqual(id1, 0);
            testCase.verifyEqual(id2, 1);
            testCase.verifyEqual(id3, 2);

            % Test with initial value
            factory2 = IdentifierFactory(10);
            testCase.verifyEqual(factory2.uniqueIdentifier(), 10);
            testCase.verifyEqual(factory2.uniqueIdentifier(), 11);
        end
    end
end
