clear; close all; clc;
%% ========================================================================
%  SubTask 1
%  ------------------------------------------------------------------------
disp("------------------------------2_1------------------------------")
CellData = {'Markus', 'Mueller', 53, true, {'Marta Mueller'; 'Michael Mueller'; 'Martina Mueller'};
            'Peter', 'Schmidt', 58, true, {'Ursula Schmidt'};
            'Beate', 'Maier', 46, false, {'Gustav Maier'};
            'Ursula', 'Leitner', 36, true, {}
            };
disp(CellData)

%% ========================================================================
%  SubTask 2
%  ------------------------------------------------------------------------
disp("------------------------------2_2------------------------------")
save("CellData.mat","CellData")
disp("CellData is saved as CellData.mat")

%% ========================================================================
%  SubTask 3
%  ------------------------------------------------------------------------
disp("------------------------------2_3------------------------------")
StructData = struct('FirstName',CellData(:,1),...
                    'Surname',CellData(:,2),...
                    'Age',CellData(:,3),...
                    'Attendance',CellData(:,4),...
                    'Company',CellData(:,5)...
                    );
disp(StructData)

%% ========================================================================
%  SubTask 4
%  ------------------------------------------------------------------------
disp("------------------------------2_4------------------------------")
Mr_Mueller = StructData(1);
FirstName = StructData(1).FirstName;
Surname = StructData(1).Surname;
Age = StructData(1).Age;
Attendance = StructData(1).Attendance;
Company = StructData(1).Company;

whos("Mr_Mueller","FirstName","Surname","Age","Attendance","Company")
%% ========================================================================
%  SubTask 5
%  ------------------------------------------------------------------------
disp("------------------------------2_5------------------------------")
TableData = struct2table(StructData);

disp(TableData)
%% ========================================================================
%  SubTask 6
%  ------------------------------------------------------------------------
disp("------------------------------2_6------------------------------")
mean_age = mean(TableData.Age);

disp(mean_age)

%% 2_7
disp("------------------------------2_7------------------------------")
getmean = @mean;
getmean(TableData.Age)