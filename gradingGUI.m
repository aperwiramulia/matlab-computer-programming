function gradingGUI
    % Create the main window
    fig = uifigure('Name','Student Grading GUI','Position',[100 100 700 500]);

    % Create a table to display data
    uit = uitable(fig, 'Position',[25 100 650 350]);

    % Load Excel button
    btnLoad = uibutton(fig, 'Text','Load Excel',...
        'Position',[25 40 100 40],...
        'ButtonPushedFcn', @(btn,event)loadData());

    % Grade button
    btnGrade = uibutton(fig, 'Text','Compute Grades',...
        'Position',[150 40 120 40],...
        'ButtonPushedFcn', @(btn,event)computeGrades());

    % Export button
    btnExport = uibutton(fig, 'Text','Export to Excel',...
        'Position',[300 40 120 40],...
        'ButtonPushedFcn', @(btn,event)exportData());

    % Create a label
    lbl = uilabel(fig, 'Text','No file loaded yet','Position',[450 50 220 30]);

    % Store variables using nested functions
    data = [];  % to hold table data
    filename = '';  % to store Excel filename

    % Nested function: Load data
    function loadData()
        [file, path] = uigetfile('*.xlsx', 'Select Excel file');
        if isequal(file,0)
            return;
        end
        filename = fullfile(path, file);
        data = readtable(filename);
        uit.Data = data;
        uit.ColumnName = data.Properties.VariableNames;
        lbl.Text = ['Loaded: ', file];
    end

    % Nested function: Compute grades and rank
    function computeGrades()
        if isempty(data)
            uialert(fig,'Please load data first!','Error');
            return;
        end
        % Assume columns named Assignment and Exam exist
        data.Total = 0.4*data.Assignment + 0.6*data.Exam;
        data.Grade = strings(height(data),1);
        for i = 1:height(data)
            if data.Total(i) >= 85
                data.Grade(i) = 'A';
            elseif data.Total(i) >= 70
                data.Grade(i) = 'B';
            elseif data.Total(i) >= 55
                data.Grade(i) = 'C';
            elseif data.Total(i) >= 40
                data.Grade(i) = 'D';
            else
                data.Grade(i) = 'E';
            end
        end
        data = sortrows(data,'Total','descend');
        data.Rank = (1:height(data))';
        uit.Data = data;
        lbl.Text = 'Grades computed successfully';
    end

    % Nested function: Export graded data
    function exportData()
        if isempty(data)
            uialert(fig,'No graded data to export!','Error');
            return;
        end
        [file, path] = uiputfile('graded_results.xlsx','Save As');
        if isequal(file,0)
            return;
        end
        writetable(data, fullfile(path,file));
        lbl.Text = 'Data exported successfully';
    end
end
