function varargout = tahunkabisat(varargin)
% TEXTTAHUN MATLAB code for texttahun.fig
%      TEXTTAHUN, by itself, creates a new TEXTTAHUN or raises the existing
%      singleton*.
%
%      H = TEXTTAHUN returns the handle to a new TEXTTAHUN or the handle to
%      the existing singleton*.
%
%      TEXTTAHUN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEXTTAHUN.M with the given input arguments.
%
%      TEXTTAHUN('Property','Value',...) creates a new TEXTTAHUN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tahunkabisat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tahunkabisat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help texttahun

% Last Modified by GUIDE v2.5 09-Mar-2020 18:55:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tahunkabisat_OpeningFcn, ...
                   'gui_OutputFcn',  @tahunkabisat_OutputFcn, ...
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


% --- Executes just before texttahun is made visible.
function tahunkabisat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to texttahun (see VARARGIN)

% Choose default command line output for texttahun
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes texttahun wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tahunkabisat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

tahun = (get(handles.edit1,'string'));

tahun = str2num (tahun);

if mod(tahun,400)==0
    hasil="kabisat";
    else if mod(tahun,100)==0
        hasil="non kabisat";
        else if mod(tahun,4)==0
            hasil="kabisat";
            else
                hasil="non kabisat";
            end
        end
end

set(handles.texttahun,'string',(hasil));


% --- Executes on button press in backMenu.
function backMenu_Callback(hObject, eventdata, handles)
% hObject    handle to backMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
menu
