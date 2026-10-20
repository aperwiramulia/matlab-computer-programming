function varargout = NAM_Komputer(varargin)
% NAM_KOMPUTER MATLAB code for NAM_Komputer.fig
%      NAM_KOMPUTER, by itself, creates a new NAM_KOMPUTER or raises the existing
%      singleton*.
%
%      H = NAM_KOMPUTER returns the handle to a new NAM_KOMPUTER or the handle to
%      the existing singleton*.
%
%      NAM_KOMPUTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NAM_KOMPUTER.M with the given input arguments.
%
%      NAM_KOMPUTER('Property','Value',...) creates a new NAM_KOMPUTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NAM_Komputer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NAM_Komputer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NAM_Komputer

% Last Modified by GUIDE v2.5 26-Nov-2025 20:55:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NAM_Komputer_OpeningFcn, ...
                   'gui_OutputFcn',  @NAM_Komputer_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before NAM_Komputer is made visible.
function NAM_Komputer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NAM_Komputer (see VARARGIN)

% Choose default command line output for NAM_Komputer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NAM_Komputer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NAM_Komputer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
myform = guidata(gcbo);


NM = handles.NM;
clc


NM.Total = 0.50*(NM.Mdl1 + NM.Mdl2 + NM.Mdl3+ NM.Mdl4)/4 + 0.20*NM.Tugas + 0.30*NM.Ujian;

for i = 1:height(NM)
    if NM.Total(i) >= 85
        NM.Grade(i) = 'A';
    elseif NM.Total(i) >= 70
        NM.Grade(i) = 'B';
    elseif NM.Total(i) >= 55
        NM.Grade(i) = 'C';
    elseif NM.Total(i) >= 40
        NM.Grade(i) = 'D';
    else
        NM.Grade(i) = 'E';
    end
end


% Store updated NM
handles.NM = NM;
guidata(hObject, handles);

% ======================================================
% NEW PART: READ POPUP SELECTION AND FILTER STUDENTS
% ======================================================

% get popup choice

contents = cellstr(get(handles.popupmenu1, 'String'));
selected = contents{get(handles.popupmenu1, 'Value')};

% filter by grade
if strcmp(selected, 'All')
    filtered = NM;
else
    filtered = NM(NM.Grade == selected, :);
end


% ======================================================
% DISPLAY FILTERED TABLE
% ======================================================

set(myform.uitable1, 'Data', table2cell(filtered));
set(myform.uitable1, 'ColumnName', filtered.Properties.VariableNames);

set(myform.edit1, 'String', ' ');
set(myform.edit2, 'String', ' ');
set(myform.edit3, 'String', ' ');
set(myform.edit4, 'String', ' ');
set(myform.edit5, 'String', ' ');


handles.filtered = filtered;
guidata(hObject, handles);


%set(myform.uitable1, 'Data', table2cell(NM)); 
%set(myform.uitable1, 'ColumnName', NM.Properties.VariableNames);












function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
myform = guidata(gcbo);

filtered = handles.filtered;   

jumlah = height(filtered)
rata = mean(filtered.Total);
sb = std(filtered.Total);
maksimum = max(filtered.Total)
minimum = min(filtered.Total)

set(myform.edit1, 'String', num2str(rata));
set(myform.edit2, 'String', num2str(sb));
set(myform.edit3, 'String', num2str(maksimum));
set(myform.edit4, 'String', num2str(minimum));
set(myform.edit5, 'String', num2str(jumlah));



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1







% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% === Get updated NM data ===
NM = handles.NM;

% Convert Grade column to char matrix (your original method)
grades = char(NM.Grade);   % PADDED with spaces

% Grade categories
cats = ['A','B','C','D','E'];

% Count occurrences
counts = zeros(1, length(cats));
for i = 1:length(cats)
    counts(i) = sum(grades(:,1) == cats(i));   % Only compare the FIRST column
end

% Remove categories with zero students (required for pie)
nonzero = counts > 0;
counts = counts(nonzero);
catsNZ = cats(nonzero);

if isempty(counts)
    errordlg('No valid grades available for pie chart.', 'Data Error');
    return;
end

% Compute percentage labels
total = sum(counts);
pctLabels = cell(1, length(counts));
for i = 1:length(counts)
    pct = (counts(i) / total) * 100;
    pctLabels{i} = sprintf('%c (%.1f%%)', catsNZ(i), pct);
end

% === Plot Pie Chart ===
axes(handles.axes1);
cla reset;

pie(counts, pctLabels);
title('Pie Chart of Grades');

    



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

myform = guidata(gcbo);

NM = handles.NM;

keyword = get(myform.edit6, 'String');     % user input
keyword = strtrim(keyword);                     % remove spaces

% === If keyword empty ? show nothing (or show all, your choice) ===
if isempty(keyword)
    set(myform.uitable3, 'Data', {});           % show empty
    return;
end

lowerKey = lower(keyword);

names = NM.Nama;    % must be cell array of char
nims  = NM.NIM;     % must be cell array of char

matchIdx = false(height(NM),1);

% === Search in names ===
for i = 1:length(names)
    nameStr = lower(char(names{i}));
    if ~isempty(strfind(nameStr, lowerKey))
        matchIdx(i) = true;
    end
end

% === Search in NIM ===
for i = 1:length(nims)
    nimStr = lower(char(nims{i}));
    if ~isempty(strfind(nimStr, lowerKey))
        matchIdx(i) = true;
    end
end

% === Filter result ===
filtered = NM(matchIdx, :);

% === Display in table ===
set(myform.uitable1, 'Data', table2cell(filtered));
set(myform.uitable1, 'ColumnName', NM.Properties.VariableNames);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



    NM = handles.NM;
    data = NM.Total;

    % Determine bins
    n = length(data);
    %k = ceil(log2(n) + 1);  % Sturges rule
    k = 5;
  % === Plot histogram using bar ===
axes(handles.axes2);
cla(handles.axes2);

[counts, centers] = hist(data, k);

% bar plot
bar(centers, counts, 'hist');

% Set x-axis ticks at the bin centers
%set(handles.axes2, 'XTick', centers);

% Format tick labels (optional: reduce decimals)
%set(handles.axes2, 'XTickLabel', arrayfun(@(x) sprintf('%.1f', x), centers, 'UniformOutput', false));

% ==== Force x-axis ticks to be integers ====
intCenters = round(centers);     % round bin centers to nearest integer

set(handles.axes2, 'XTick', intCenters);
set(handles.axes2, 'XTickLabel', arrayfun(@num2str, intCenters, 'UniformOutput', false));






xlabel('Bin Centers (NM.Total)');
ylabel('Frequency');
title(['Histogram of Nilai Mahasiswa (', num2str(5), ' bins)']);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  % === 1. Get only the displayed rows ===
    dataCell = get(handles.uitable1, 'Data');
    colNames = get(handles.uitable1, 'ColumnName');
    T = cell2table(dataCell, 'VariableNames', colNames);

    % === 2. Sort by Total descending ===
    T = sortrows(T, 'Total', 'descend');

    % === 3. Add rank column ===
    T.Rank = (1:height(T))';

    % === 4. Display back to uitable1 ===
    set(handles.uitable1, 'Data', table2cell(T));
    set(handles.uitable1, 'ColumnName', T.Properties.VariableNames);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


    % Get table data
    data = get(handles.uitable1, 'Data');

    % Get filename from edit box
    filename = get(handles.edit7, 'String');
    filename = strtrim(filename);

    if isempty(filename)
        errordlg('Please enter a filename.');
        return;
    end

    % Fix extension manually (old MATLAB does NOT support endsWith)
    [filepath, name, ext] = fileparts(filename);

    % If user provided no extension ? add .xlsx
    if isempty(ext)
        filename = fullfile(filepath, [name '.xlsx']);
    else
        % If user provided wrong extension ? replace with .xlsx
        if ~strcmpi(ext, '.xlsx')
            filename = fullfile(filepath, [name '.xlsx']);
        end
    end

    % Save the file
    try
        xlswrite(filename, data);
        msgbox(['Saved to: ' filename], 'Success');
    catch ME
        errordlg(['Error saving file: ' ME.message]);
    end




function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    clc;
    % Start file selection in current directory
    startDir = pwd;

    % Let user select an Excel file
    [file, path] = uigetfile({'*.xlsx;*.xls', 'Excel Files (*.xlsx, *.xls)'}, ...
                             'Select Excel File', startDir);

    if isequal(file,0)
        return;   % User canceled
    end

    filename = fullfile(path, file);

    % === Read Excel file ===
    try
        NM = readtable(filename);     % Modern, reliable
    catch
        % Fallback for older MATLAB
        [~, ~, raw] = xlsread(filename);
        NM = cell2table(raw(2:end,:), 'VariableNames', raw(1,:));
    end
    
    % Ganti nama beberapa kolom
    NM.Properties.VariableNames = {'No', 'Nama', 'NIM', 'Mdl1', 'Mdl2', ...
                                        'Mdl3', 'Mdl4', 'Tugas', 'Ujian'};

       
    
    
    % === Save into handles ===
    handles.NM = NM;
    guidata(hObject, handles);       % IMPORTANT: update GUI data

    % === Display in GUI table ===
    set(handles.uitable1, 'Data', table2cell(NM));
    set(handles.uitable1, 'ColumnName', NM.Properties.VariableNames);

    msgbox(['Loaded file: ' filename], 'Success');
    clc;
    
