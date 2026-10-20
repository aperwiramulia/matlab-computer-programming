function varargout = Nilai_Mhsw_GUI2(varargin)
% NILAI_MHSW_GUI2 MATLAB code for Nilai_Mhsw_GUI2.fig
%      NILAI_MHSW_GUI2, by itself, creates a new NILAI_MHSW_GUI2 or raises the existing
%      singleton*.
%
%      H = NILAI_MHSW_GUI2 returns the handle to a new NILAI_MHSW_GUI2 or the handle to
%      the existing singleton*.
%
%      NILAI_MHSW_GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NILAI_MHSW_GUI2.M with the given input arguments.
%
%      NILAI_MHSW_GUI2('Property','Value',...) creates a new NILAI_MHSW_GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Nilai_Mhsw_GUI2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Nilai_Mhsw_GUI2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Nilai_Mhsw_GUI2

% Last Modified by GUIDE v2.5 05-Nov-2025 15:24:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Nilai_Mhsw_GUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @Nilai_Mhsw_GUI2_OutputFcn, ...
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


% --- Executes just before Nilai_Mhsw_GUI2 is made visible.
function Nilai_Mhsw_GUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Nilai_Mhsw_GUI2 (see VARARGIN)

% Choose default command line output for Nilai_Mhsw_GUI2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Nilai_Mhsw_GUI2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Nilai_Mhsw_GUI2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function EdNilaiAkhir_Callback(hObject, eventdata, handles)
% hObject    handle to EdNilaiAkhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdNilaiAkhir as text
%        str2double(get(hObject,'String')) returns contents of EdNilaiAkhir as a double


% --- Executes during object creation, after setting all properties.
function EdNilaiAkhir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdNilaiAkhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EdHurufAkhir_Callback(hObject, eventdata, handles)
% hObject    handle to EdHurufAkhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EdHurufAkhir as text
%        str2double(get(hObject,'String')) returns contents of EdHurufAkhir as a double


% --- Executes during object creation, after setting all properties.
function EdHurufAkhir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EdHurufAkhir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
myform = guidata(gcbo);

uts1 = str2double(get(myform.EdUTS1, 'String'));
uts2 = str2double(get(myform.EdUTS2, 'String'));
uas = str2double(get(myform.EdUAS, 'String'));

b1 = str2double(get(myform.EdBobot1, 'String'));
b2 = str2double(get(myform.EdBobot2, 'String'));
b3 = str2double(get(myform.EdBobot3, 'String'));

NA = uts1*b1/100 + uts2*b2/100 + uas*b3/100;

if NA >= 80 
    set(myform.EdHurufAkhir, 'String', 'A');
elseif NA >= 70 
    set(myform.EdHurufAkhir, 'String', 'B');
elseif NA >= 60
    set(myform.EdHurufAkhir, 'String', 'C');
elseif NA >= 50
    set(myform.EdHurufAkhir, 'String', 'D');
else 
    set(myform.EdHurufAkhir, 'String', 'E');
end

set(myform.EdNilaiAkhir, 'String', num2str(NA));
    
    

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
