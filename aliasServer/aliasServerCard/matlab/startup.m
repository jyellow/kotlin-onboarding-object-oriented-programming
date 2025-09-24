% Add the project root directory and tests to the MATLAB path
projectRoot = fileparts(mfilename('fullpath'));
addpath(projectRoot);
% 运行所有的测试
addpath(fullfile(projectRoot, 'tests'));

% Run the tests
% results = runtests('CardTest');
% disp(results);
