function varargout = grafik_GUI1(varargin)
% GRAFIK_GUI1 MATLAB code for grafik_GUI1.fig
%      GRAFIK_GUI1, by itself, creates a new GRAFIK_GUI1 or raises the existing
%      singleton*.
%
%      H = GRAFIK_GUI1 returns the handle to a new GRAFIK_GUI1 or the handle to
%      the existing singleton*.
%
%      GRAFIK_GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFIK_GUI1.M with the given input arguments.
%
%      GRAFIK_GUI1('Property','Value',...) creates a new GRAFIK_GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before grafik_GUI1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to grafik_GUI1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help grafik_GUI1

% Last Modified by GUIDE v2.5 05-Nov-2025 17:40:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @grafik_GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @grafik_GUI1_OutputFcn, ...
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


% --- Executes just before grafik_GUI1 is made visible.
function grafik_GUI1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to grafik_GUI1 (see VARARGIN)

% Choose default command line output for grafik_GUI1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes grafik_GUI1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = grafik_GUI1_OutputFcn(hObject, eventdata, handles) 
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
clc, clear
formku = guidata(gcbo);
[namafile, direktori] = uigetfile('*.txt', 'Load Data file');
eval(['cd ''' direktori '''; ']);
eval(['dataku = load(''' namafile ''')']);
x = dataku(:,1);
y = dataku(:,2);

set(formku.figure1, 'CurrentAxes', formku.grafik1);
a = plot(x,y,'or');
set(a, 'LineWidth', 2);
set(formku.grafik1, 'Color', [1 0.96 0.9], 'XGrid', 'on', 'YGrid', 'on', 'NextPlot', 'add');
set(formku.figure1,'Userdata', dataku);





% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
formku = guidata(gcbo);
dataku = get(formku.figure1,'Userdata');
x = dataku(:,1);
y = dataku(:,2);
xi = [min(x):0.25:max(x)];

pilihan = get(formku.popupmenu1, 'Value');
switch pilihan
    case 1
        yi = interp1(x,y,xi,'nearest');
    case 2
        yi = interp1(x,y,xi,'linear');
    case 3
        yi = interp1(x,y,xi,'cubic');
    case 4
        yi = interp1(x,y,xi,'spline');
end

set(formku.figure1,'CurrentAxes', formku.grafik1);
a = plot(x,y,'or');
set(a, 'LineWidth', 3);
set(formku.grafik1, 'Color', [1 0.96 0.9], 'XGrid', 'on', 'YGrid', 'on', 'NextPlot', 'add');

a = plot(xi,yi,'-b');
set(a, 'LineWidth', 2);
set(formku.grafik1, 'Color', [1 0.96 0.9], 'XGrid', 'on', 'YGrid', 'on', 'NextPlot', 'replace');

dataxy = [xi' yi'];
set(formku.grafik1,'Userdata',dataxy);





% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
formku = guidata(gcbo)
[namafile, direktori] = uiputfile('*.txt', 'Simpan Hasil Sebagai');
eval(['cd ''' direktori ''';']);
namafile = [namafile '.txt']
fout = fopen(namafile, 'w');

dataku = get(formku.figure1, 'Userdata');
x = dataku(:,1)
y = dataku(:,2)
fprintf(fout, '--------- data asli ----------\n')
fprintf(fout, '%8s %8s\n', 'Data X', 'Data Y');
for ii = 1:length(x)
    fprintf(fout, '%8.2f %8.2f \n', x(ii), y(ii));
end

dataku = get(formku.grafik1, 'Userdata');
x = dataku(:,1)
y = dataku(:,2);
fprintf(fout, '--------- data interpolasi ----------\n')
fprintf(fout, '%8s %8s\n', 'Data X', 'Data Y');
for ii = 1:length(x)
    fprintf(fout, '%8.2f %8.2f \n', x(ii), y(ii));
end
fclose(fout);



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


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
