function varargout = samplelib(varargin)
% SAMPLELIB MATLAB code for samplelib.fig
%      SAMPLELIB, by itself, creates a new SAMPLELIB or raises the existing
%      singleton*.
%
%      H = SAMPLELIB returns the handle to a new SAMPLELIB or the handle to
%      the existing singleton*.
%
%      SAMPLELIB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAMPLELIB.M with the given input arguments.
%
%      SAMPLELIB('Property','Value',...) creates a new SAMPLELIB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before samplelib_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to samplelib_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES 

% Edit the above text to modify the response to help samplelib

% Last Modified by GUIDE v2.5 02-Apr-2013 15:08:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @samplelib_OpeningFcn, ...
                   'gui_OutputFcn',  @samplelib_OutputFcn, ...
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


% --- Executes just before samplelib is made visible.
function samplelib_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to samplelib (see VARARGIN)

% Choose default command line output for samplelib
handles.output = hObject;
movegui(gcf,'center');%将gui移到屏幕中间
% Update handles structure
guidata(hObject, handles);

global sample ;
sample = load('template.mat');     %读入数据

sumtmp=0;
for i=1:10
    tmphandles=eval(['handles.text' num2str(i+1)]);
    set(tmphandles,'string',num2str(sample.pattern(i).num));
    sumtmp=sumtmp+sample.pattern(i).num;
end
set(handles.text12,'string',num2str(sumtmp));


%显示sample.pattern(1).feature（1，：）,即数字0的第一个特征在数字特征图中
if sample.pattern(1).num
    SetFeature(handles,'string',sample.pattern(1).feature(1,:));
end
SetFeature(handles,'enable','inactive');


% UIWAIT makes samplelib wait for user response (see UIRESUME)
% uiwait(handles.figure1);


function SetFeature(handles,PropertyName,feature)
% SetFeature(handles,'value',sample.pattern(1).feature(1,:));
% SetFeature(handles,'enable','on');
% SetFeature(handles,'enable','inactive');
flag=strcmp(PropertyName,'string');
if flag 
    for i=1:25
        tmphandles=eval(['handles.feature' num2str(i)]);
        set(tmphandles,PropertyName,feature(i));
    end
else
    for i=1:25
        tmphandles=eval(['handles.feature' num2str(i)]);
        set(tmphandles,PropertyName,feature);
    end
end

function feature=GetFeature(~)%在修改和新建样本时得到数字特征
feature=zeros(1,25);
for i=1:25
    tmphandles=eval(['handles.feature' num2str(i)]);
    feature(i)=str2num(get(tmphandles,'string'));
end


function number=GetNumber(handles)%取回单选按钮所指的数字
for i=0:9
    tmphandles=eval(['handles.radiobutton' num2str(i)]);
    tmp=get(tmphandles,'value');
    if tmp==1
       number=i;
       return
    end
end



% --- Outputs from this function are returned to the command line.
function varargout = samplelib_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   修改
% --------------------------------------------------------------------
% global newflag;
% newflag=0;
% SetFeature(handles,'enable','on');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   删除
% --------------------------------------------------------------------
% global sample;
% SetFeature(handles,'enable','inactive');
% number=GetNumber(handles)+1;
% 
% if sample.pattern(number).num==0 %无样本就不用删除了
%     return
% end
% 
% sample.pattern(number).feature(sample.position,:)=[];
% if sample.position==sample.pattern(number).num%若已经是最后一个，删除一个后，把position位置前移
%     sample.position=sample.position-1;
% end
% sample=sample.NumberMinus1(number);%对相应的样本数减1
% 
% if sample.pattern(number).num %还有样本存在
%     SetFeature(handles,'string',sample.pattern(number).feature(sample.position,:));
% else
%     SetFeature(handles,'string',zeros(1,25));
% end
% set(handles.text13,'string',['样本号： ' num2str(sample.position)]);
% 
% sumtmp=0;
% for i=1:10
%     tmphandles=eval(['handles.text' num2str(i+1)]);
%     set(tmphandles,'string',num2str(sample.pattern(i).num));
%     sumtmp=sumtmp+sample.pattern(i).num;
% end
% set(handles.text12,'string',num2str(sumtmp));




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   前一个
% --------------------------------------------------------------------
global sample
SetFeature(handles,'enable','inactive');
number=GetNumber(handles)+1;
if sample.position>1
    sample.position=sample.position-1;
else
    sample.position=sample.pattern(number).num;
end

SetFeature(handles,'string',sample.pattern(number).feature(sample.position,:));
set(handles.text13,'string',['样本号： ' num2str(sample.position)]);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   后一个
% --------------------------------------------------------------------
global sample
SetFeature(handles,'enable','inactive');
number=GetNumber(handles)+1;
if sample.position < sample.pattern(number).num
    sample.position=sample.position+1;
else
    sample.position=1;
end
SetFeature(handles,'string',sample.pattern(number).feature(sample.position,:));
set(handles.text13,'string',['样本号： ' num2str(sample.position)]);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   添加样品
% --------------------------------------------------------------------
% global sample newflag;
% newflag=1;%标志是新增样品，而不是修改
% SetFeature(handles,'enable','on');
% sample.position=1;
% SetFeature(handles,'string',zeros(1,25));




% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   保存样品
% --------------------------------------------------------------------
% global sample newflag;
% SetFeature(handles,'enable','inactive');
% feature=GetFeature(handles);    
% number=GetNumber(handles);
% sample=sample.Save(feature,number,sample.position,newflag);
% newflag=0;
% set(handles.text13,'string',['样本号： ' num2str(sample.position)]);
% sumtmp=0;
% for i=1:10
%     tmphandles=eval(['handles.text' num2str(i+1)]);
%     set(tmphandles,'string',num2str(sample.pattern(i).number));
%     sumtmp=sumtmp+sample.pattern(i).number;
% end
% set(handles.text12,'string',num2str(sumtmp));




% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
%   退出
% --------------------------------------------------------------------
global sample
pattern = sample.pattern;
save('template.mat','pattern');
clear sample newflag
set(gcf,'visible','off');
h = figure(homework);
set(h,'visible','on');

% --- Executes during object deletion, before destroying properties.
function figure1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in uipanel1.
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel1 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global sample
SetFeature(handles,'enable','inactive');
number=GetNumber(handles)+1;
sample.position=1;
if sample.pattern(number).num
    SetFeature(handles,'string',sample.pattern(number).feature(1,:));
    set(handles.text13,'string','样本号： 1');
else
    SetFeature(handles,'string',zeros(1,25));
    set(handles.text13,'string','样本号： 0');
end





function feature1_Callback(hObject, eventdata, handles)
% hObject    handle to feature1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature1 as text
%        str2double(get(hObject,'String')) returns contents of feature1 as a double


% --- Executes during object creation, after setting all properties.
function feature1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature2_Callback(hObject, eventdata, handles)
% hObject    handle to feature2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature2 as text
%        str2double(get(hObject,'String')) returns contents of feature2 as a double


% --- Executes during object creation, after setting all properties.
function feature2_CreateFcn(hObject, ~, handles)
% hObject    handle to feature2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature3_Callback(hObject, eventdata, handles)
% hObject    handle to feature3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature3 as text
%        str2double(get(hObject,'String')) returns contents of feature3 as a double


% --- Executes during object creation, after setting all properties.
function feature3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature4_Callback(hObject, eventdata, handles)
% hObject    handle to feature4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature4 as text
%        str2double(get(hObject,'String')) returns contents of feature4 as a double


% --- Executes during object creation, after setting all properties.
function feature4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature5_Callback(hObject, eventdata, handles)
% hObject    handle to feature5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature5 as text
%        str2double(get(hObject,'String')) returns contents of feature5 as a double


% --- Executes during object creation, after setting all properties.
function feature5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature6_Callback(hObject, eventdata, handles)
% hObject    handle to feature6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature6 as text
%        str2double(get(hObject,'String')) returns contents of feature6 as a double


% --- Executes during object creation, after setting all properties.
function feature6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature7_Callback(hObject, eventdata, handles)
% hObject    handle to feature7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature7 as text
%        str2double(get(hObject,'String')) returns contents of feature7 as a double


% --- Executes during object creation, after setting all properties.
function feature7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature8_Callback(hObject, eventdata, handles)
% hObject    handle to feature8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature8 as text
%        str2double(get(hObject,'String')) returns contents of feature8 as a double


% --- Executes during object creation, after setting all properties.
function feature8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature9_Callback(hObject, eventdata, handles)
% hObject    handle to feature9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature9 as text
%        str2double(get(hObject,'String')) returns contents of feature9 as a double


% --- Executes during object creation, after setting all properties.
function feature9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature10_Callback(hObject, eventdata, handles)
% hObject    handle to feature10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature10 as text
%        str2double(get(hObject,'String')) returns contents of feature10 as a double


% --- Executes during object creation, after setting all properties.
function feature10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature11_Callback(hObject, eventdata, handles)
% hObject    handle to feature11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature11 as text
%        str2double(get(hObject,'String')) returns contents of feature11 as a double


% --- Executes during object creation, after setting all properties.
function feature11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature12_Callback(hObject, eventdata, handles)
% hObject    handle to feature12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature12 as text
%        str2double(get(hObject,'String')) returns contents of feature12 as a double


% --- Executes during object creation, after setting all properties.
function feature12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature13_Callback(hObject, eventdata, handles)
% hObject    handle to feature13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature13 as text
%        str2double(get(hObject,'String')) returns contents of feature13 as a double


% --- Executes during object creation, after setting all properties.
function feature13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature14_Callback(hObject, eventdata, handles)
% hObject    handle to feature14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature14 as text
%        str2double(get(hObject,'String')) returns contents of feature14 as a double


% --- Executes during object creation, after setting all properties.
function feature14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature15_Callback(hObject, eventdata, handles)
% hObject    handle to feature15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature15 as text
%        str2double(get(hObject,'String')) returns contents of feature15 as a double


% --- Executes during object creation, after setting all properties.
function feature15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature16_Callback(hObject, eventdata, handles)
% hObject    handle to feature16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature16 as text
%        str2double(get(hObject,'String')) returns contents of feature16 as a double


% --- Executes during object creation, after setting all properties.
function feature16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature17_Callback(hObject, eventdata, handles)
% hObject    handle to feature17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature17 as text
%        str2double(get(hObject,'String')) returns contents of feature17 as a double


% --- Executes during object creation, after setting all properties.
function feature17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature18_Callback(hObject, eventdata, handles)
% hObject    handle to feature18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature18 as text
%        str2double(get(hObject,'String')) returns contents of feature18 as a double


% --- Executes during object creation, after setting all properties.
function feature18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature19_Callback(hObject, eventdata, handles)
% hObject    handle to feature19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature19 as text
%        str2double(get(hObject,'String')) returns contents of feature19 as a double


% --- Executes during object creation, after setting all properties.
function feature19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature20_Callback(hObject, eventdata, handles)
% hObject    handle to feature20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature20 as text
%        str2double(get(hObject,'String')) returns contents of feature20 as a double


% --- Executes during object creation, after setting all properties.
function feature20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature21_Callback(hObject, eventdata, handles)
% hObject    handle to feature21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature21 as text
%        str2double(get(hObject,'String')) returns contents of feature21 as a double


% --- Executes during object creation, after setting all properties.
function feature21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature22_Callback(hObject, eventdata, handles)
% hObject    handle to feature22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature22 as text
%        str2double(get(hObject,'String')) returns contents of feature22 as a double


% --- Executes during object creation, after setting all properties.
function feature22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature23_Callback(hObject, eventdata, handles)
% hObject    handle to feature23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature23 as text
%        str2double(get(hObject,'String')) returns contents of feature23 as a double


% --- Executes during object creation, after setting all properties.
function feature23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature24_Callback(hObject, eventdata, handles)
% hObject    handle to feature24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature24 as text
%        str2double(get(hObject,'String')) returns contents of feature24 as a double


% --- Executes during object creation, after setting all properties.
function feature24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function feature25_Callback(hObject, eventdata, handles)
% hObject    handle to feature25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of feature25 as text
%        str2double(get(hObject,'String')) returns contents of feature25 as a double


% --- Executes during object creation, after setting all properties.
function feature25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to feature25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
