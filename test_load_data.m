test_data_path = "test_data\tensile.csv";

variable_names = {'BreakStrain___','BreakStress_MPa_','UltimateStress_MPa_','Modulus_MPa_','YieldStress_MPa_'};
table_sums = [6881817.60000000,39989.5700000000,168566.342000000,33022.7259999997,484215.316000000];
%table_sums.Properties.VariableNames = variable_names;

test_table = load_data(test_data_path);


%% Test 1: A table is loaded
assert(istable(test_table));

%% Test 2: Column names are correct
% also checks number of columns
assert(isequal(test_table.Properties.VariableNames, variable_names));

%% Test 3: Column sums are correct
% checks to 9 decimal places - ToDo confirm why not exactly equal
assert(isequal(round(table2array(varfun(@sum,test_table)),9), round(table_sums,9)))