function varargout = ex2(varargin)
% EX2 MATLAB code for ex2.fig
%      EX2, by itself, creates a new EX2 or raises the existing
%      singleton*.
%
%      H = EX2 returns the handle to a new EX2 or the handle to
%      the existing singleton*.
%
%      EX2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX2.M with the given input arguments.
%
%      EX2('Property','Value',...) creates a new EX2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex2

% Last Modified by GUIDE v2.5 07-Oct-2020 09:53:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex2_OpeningFcn, ...
                   'gui_OutputFcn',  @ex2_OutputFcn, ...
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


% --- Executes just before ex2 is made visible.
function ex2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex2 (see VARARGIN)

% Choose default command line output for ex2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Browse.
function Browse_Callback(hObject, eventdata, handles)
% hObject    handle to Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
       warndlg('User pressed cancel')% affiche une fenetre d'erreur
    else
       filename = strcat(pathname,filename);
       a = imread(filename);
       axes(handles.axes1);
       imshow(a);
    end

handles.a = a;
% Update handles structure
guidata(hObject, handles);
    
% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


a = handles.a;
imshow(a);
axes(handles.axes2);
value=get(hObject,'Value') ;


if (value == 1)
        b = rgb2gray(a);
        axes(handles.axes2);
        imshow(b);
elseif(value == 2)
        b = rgb2gray(a);
        b =im2bw(b);
        axes(handles.axes2);
        axes(handles.axes2);
        imshow(b);
end
           
           
           


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in convertgray.
function convertgray_Callback(hObject, eventdata, handles)
% hObject    handle to convertgray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of convertgray
a = handles.a;
imshow(a);
axes(handles.axes2);
value=get(hObject,'Value') ;

if (value == 0)
        b = rgb2gray(a);
        axes(handles.axes2);
        imshow(b);
elseif(value == 1)
        b = rgb2gray(a);
        b =im2bw(b);
        axes(handles.axes2);
        axes(handles.axes2);
        imshow(b);
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
a = handles.a;
imshow(a);
axes(handles.axes2);
value=get(hObject,'Value') ;

if (value == 0)
        b = rgb2gray(a);
        axes(handles.axes2);
        imshow(b);
elseif(value == 1)
        b = rgb2gray(a);
        b =im2bw(b);
        axes(handles.axes2);
        axes(handles.axes2);
        imshow(b);
end
