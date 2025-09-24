function results = RunAllTests()
    % RunAllTests 运行所有测试套件并报告结果
    %   此函数运行所有测试类并返回测试结果摘要

    % 导入测试框架
    import matlab.unittest.TestSuite;
    import matlab.unittest.TestRunner;
    import matlab.unittest.plugins.TAPPlugin;
    import matlab.unittest.plugins.ToFile;

    % 创建测试套件，包含所有测试类
    suite = [
        TestSuite.fromClass(?IdentifierTest)
        TestSuite.fromClass(?IdentifierFactoryTest)
        TestSuite.fromClass(?TeamTest)
        TestSuite.fromClass(?TeamServiceTest)
    ];

    % 运行测试
    results = run(suite);

    % 显示结果摘要
    disp('测试结果摘要:');
    disp(['  运行测试数: ' num2str(results.NumTotal)]);
    disp(['  通过测试数: ' num2str(results.NumPassed)]);
    disp(['  失败测试数: ' num2str(results.NumFailed)]);

    % 显示详细测试结果
    disp('详细测试结果:');
    table(results)
end
