classdef CardTest < matlab.unittest.TestCase
  
    % CardTest Test suite for the Alias card game classes

    properties (TestParameter)
        % 两组测试用例
        testWords = {
            ["hello", "world"];
            ["test", "case", "example"];
        }
    end

    methods (Test)
        function testWordCreation(testCase)
            % Test Word class creation and basic functionality
            testWord = "example";
            word = jetbrains.kotlin.course.alias.card.Word(testWord);

            testCase.verifyEqual(word.word, testWord);
            testCase.verifyEqual(word.string(), testWord);
        end

        function testCardCreation(testCase, testWords)
            % Test Card class creation and basic functionality
            import jetbrains.kotlin.course.alias.card.Word
            import jetbrains.kotlin.course.alias.card.Card

            % Create Word objects
            % 使用测试用例中的列表创建Word类型对象列表
            words = arrayfun(@(w) Word(w), testWords);

            % Create Card
            id = 1;
            card = Card(id, words);

            % Verify card properties
            testCase.verifyEqual(card.id, id);
            testCase.verifyEqual(length(card.words), length(testWords));

            % Verify each word
            for i = 1:length(testWords)
                testCase.verifyEqual(card.words(i).string(), testWords(i));
            end
        end

    end
end
