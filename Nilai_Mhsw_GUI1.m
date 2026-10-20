function varargout = Nilai_Mhsw_GUI1(varargin)
% NILAI_MHSW_GUI1 MATLAB code for Nilai_Mhsw_GUI1.fig
%      NILAI_MHSW_GUI1, by itself, creates a new NILAI_MHSW_GUI1 or raises the existing
%      singleton*.
%
%      H = NILAI_MHSW_GUI1 returns the handle to a new NILAI_MHSW_GUI1 or the handle to
%      the existing singleton*.
%
%      NILAI_MHSW_GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NILAI_MHSW_GUI1.M with the given input arguments.
%
%      NILAI_MHSW_GUI1('Property','Value',...) creates a new NILAI_MHSW_GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Nilai_Mhsw_GUI1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Nilai_Mhsw_GUI1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Nilai_Mhsw_GUI1

% Last Modified by GUIDE v2.5 05-Nov-2025 13:37:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Nilai_Mhsw_GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @Nilai_Mhsw_GUI1_OutputFcn, ...
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


% --- Executes just before Nilai_Mhsw_GUI1 is made visible.
function Nilai_Mhsw_GUI1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Nilai_Mhsw_GUI1 (see VARARGIN)

% Choose default command line output for Nilai_Mhsw_GUI1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Nilai_Mhsw_GUI1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Nilai_Mhsw_GUI1_OutputFcn(hObject, eventdata, handles) 
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

uts1 = str2double(get(myform.EdUTS1, 'String'))
uts2 = str2double(get(myform.EdUTS2, 'String'))
uas = str2double(get(myform.EdUAS, 'String'))

b1 = str2double(get(myform.EdBobot1, 'String'))
b2 = str2double(get(myform.EdBobot2, 'String'))
b3 = str2double(get(myform.EdBobot3, 'String'));

na = uts1*b1/100 + uts2*b2/100 + uas*b3/100

if na >= 80
    set(myform.EdHuruf, 'String', 'A');
elseif na >= 70
    set(myform.EdHuruf, 'String', 'B');
elseif na >= 60
    set(myform.EdHuruf, 'String', 'C');
elseif na >= 50
    set(myform.EdHuruf, 'String', 'D');
else
    set(myform.EdHuruf, 'String', 'E');
end

set(myform.EdAkhir, 'String', num2str(na))



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


function EdUTS1_Callback(hObject, eventdata, handles)
% hObject    handle to EdUTS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdUTS1 as text
%        str2double(get(hObject,'String')) returns contents of EdUTS1 as a double


% --- Executes during object creation, after setting all properties.
function EdUTS1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdUTS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdUTS2_Callback(hObject, eventdata, handles)
% hObject    handle to EdUTS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdUTS2 as text
%        str2double(get(hObject,'String')) returns contents of EdUTS2 as a double


% --- Executes during object creation, after setting all properties.
function EdUTS2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdUTS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdUAS_Callback(hObject, eventdata, handles)
% hObject    handle to EdUAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdUAS as text
%        str2double(get(hObject,'String')) returns contents of EdUAS as a double


% --- Executes during object creation, after setting all properties.
function EdUAS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdUAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdAkhir_Callback(hObject, eventdata, handles)
% hObject    handle to EdAkhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdAkhir as text
%        str2double(get(hObject,'String')) returns contents of EdAkhir as a double


% --- Executes during object creation, after setting all properties.
function EdAkhir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdAkhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdBobot1_Callback(hObject, eventdata, handles)
% hObject    handle to EdBobot1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdBobot1 as text
%        str2double(get(hObject,'String')) returns contents of EdBobot1 as a double


% --- Executes during object creation, after setting all properties.
function EdBobot1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdBobot1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdBobot2_Callback(hObject, eventdata, handles)
% hObject    handle to EdBobot2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdBobot2 as text
%        str2double(get(hObject,'String')) returns contents of EdBobot2 as a double


% --- Executes during object creation, after setting all properties.
function EdBobot2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdBobot2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdBobot3_Callback(hObject, eventdata, handles)
% hObject    handle to EdBobot3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdBobot3 as text
%        str2double(get(hObject,'String')) returns contents of EdBobot3 as a double


% --- Executes during object creation, after setting all properties.
function EdBobot3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdBobot3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdHuruf_Callback(hObject, eventdata, handles)
% hObject    handle to EdHuruf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdHuruf as text
%        str2double(get(hObject,'String')) returns contents of EdHuruf as a double


% --- Executes during object creation, after setting all properties.
function EdHuruf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdHuruf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
