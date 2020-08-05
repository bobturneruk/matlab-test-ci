function data = load_data(path)
    opts = detectImportOptions(path); % Initial detection
    opts.VariableNamesLine = 1; % Variable names on line 1
    data = readtable(path, opts);
end
