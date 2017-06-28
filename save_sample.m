function varargout = save_sample(varargin)
% SAVE_SAMPLE MATLAB code for save_sample.fig
%      SAVE_SAMPLE, by itself, creates a new SAVE_SAMPLE or raises the existing
%      singleton*.
%
%      H = SAVE_SAMPLE returns the handle to a new SAVE_SAMPLE or the handle to
%      the existing singleton*.
%
%      SAVE_SAMPLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAVE_SAMPLE.M with the given input arguments.
%
%      SAVE_SAMPLE('Property','Value',...) creates a new SAVE_SAMPLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before save_sample_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to save_sample_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help save_sample

% Last Modified by GUIDE v2.5 16-Apr-2013 21:11:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @save_sample_OpeningFcn, ...
                   'gui_OutputFcn',  @save_sample_OutputFcn, ...
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


% --- Executes just before save_sample is made visible.
function save_sample_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to save_sample (see VARARGIN)

% Choose default command line output for save_sample
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

if exist('template.mat','file')~=0     
    load template.mat;
end



% UIWAIT makes save_sample wait for user response (see UIRESUME)
% uiwait(handles.figure1);




% --- Outputs from this function are returned to the command line.
function varargout = save_sample_OutputFcn(hObject, eventdata, handles) 
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
load template pattern
feature = importdata('feature.dat');
% 获取样品种类
str = get(handles.edit1,'string');
if isempty(str)
    warndlg('请输入数字！','警告：');
    return;
end
shuzi = str2num(str);
if shuzi>=0 && shuzi<=9 && shuzi == fix(shuzi)
else
    warndlg('请输入 0--9 的整数！','输入错误：');
    return;
end
% 检查是否有重合的样品
flg = 1;
 for i = 1: pattern(shuzi+1).num
    if pattern(shuzi+1).feature(i,:) == feature;
        flg = 0;
        warndlg('此样品已经存在!','警告：');
        return;
    end
 end

% 存入样品
if flg
    pattern(shuzi+1).num=pattern(shuzi+1).num+1;
    pattern(shuzi+1).feature(pattern(shuzi+1).num,: ) = feature;
end
    
save('template.mat','pattern');
 
% 返回主界面
set(gcf,'visible','off');
h = figure(homework);
set(h,'visible','on');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'visible','off');
h = figure(homework);
set(h,'visible','on');

