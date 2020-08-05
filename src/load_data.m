% load_data - Load tensile test data
% Loads tensile test data output by the Squiddly Brand tensile test
% machine, which is a `.csv` file with columns for `BreakStrain`, 
% `BreakStress_MPa` , `UltimateStress_MPa` , `Modulus_MPa` and 
% `YieldStress_MPa`.
%
% Syntax:  data = load_data(path)
%
% Inputs:
%    path - Path to data file
%
% Outputs:
%    data - Table containing loaded data
%
% Example: 
%    mydata = load_data('data.csv')
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: OTHER_FUNCTION_NAME1,  OTHER_FUNCTION_NAME2

function data = load_data(path)
    opts = detectImportOptions(path); % Initial detection
    opts.VariableNamesLine = 1; % Variable names on line 1
    data = readtable(path, opts);
end
